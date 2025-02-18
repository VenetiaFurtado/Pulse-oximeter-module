/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
 *
 ********************************************************************************
 * This file contains the implementation for the LCD device driver.
 * References: https://www.pjrc.com/teensy/td_libs_GLCD.html
 *******************************************************************************/
/******************************************************************************/
//                            INCLUDES & DEFINES
/******************************************************************************/
#include <mcs51/8051.h>
#include "at89c51ed2.h"
#include <stdint.h>
#include "log.h"
#include "io.h"
#include "font.h"

// Sending command to LCD
#define GLCD_RESET                  P1_1

#define STATUS_READ                 0x800E
#define DATA_WRITE_LEFT_ADDR        0x8009
#define DATA_WRITE_RIGHT_ADDR       0x8005

#define COMMAND_WRITE_LEFT_ADDR     0x8008
#define COMMAND_WRITE_RIGHT_ADDR    0x8004

#define COMMAND_WRITE_ADDR          0x800C

#define DATA_READ_LEFT_ADDR         0x800B
#define DATA_READ_RIGHT_ADDR        0x8007

#define MAX_COLUMN_PER_CONTROLLER   64

#define PAGE_MASK                   0xB8 // 1011 1 xxx
#define Y_MASK                      0x40    // 01xx xxxx
#define BUSY_MASK                   0x80

#define CHARACTER_WIDTH             3

#define STATUS_X_LOC                2
#define SPO2_X_LOC                  70
#define BPM_X_LOC                   100

typedef enum
{
   COMMAND_WRITE = 0,
   COMMAND_WRITE_LEFT,
   COMMAND_WRITE_RIGHT,
   COLUMN_SELECT_LEFT,
   COLUMN_SELECT_RIGHT,
   DATA_WRITE_LEFT,
   DATA_WRITE_RIGHT,
   DATA_READ_LEFT,
   DATA_READ_RIGHT
} MemoryAddress;

typedef enum
{
   ZERO = 0,
   ONE = 1
} BitValue;

/******************************************************************************/
//                  FUNCTION DEFINITIONS
/******************************************************************************/

/**
 * @brief Function to provide a delay of timeUs
 *
 * @param timeUs
 */
void delay(const uint16_t timeUs)
{
   for (uint16_t i = 0; i < timeUs; i++)
   {
      __asm__("nop");
   }
}

/**
 * @brief Polls the LCD busy flag. Function does not return until the LCD
 * controller is ready to accept another command.
 */
void busyWait()
{
   // since value at BUSY_ADDRESS can change we use volatile
   volatile __xdata uint8_t *ptr = (volatile __xdata uint8_t *)STATUS_READ;
   // checks and waits until Busy Flag (DB7) is 0
   while ((*ptr & BUSY_MASK) != 0);
}

/**
 * @brief Logic to write to the requested memory address by the 8051
 * 
 * @param addr 
 * @param val 
 */
void gLcdWriteToRegister(MemoryAddress addr, uint8_t val)
{
   __xdata uint8_t *ptr = NULL;

   if (addr == COMMAND_WRITE)
   {
      //Type-casting COMMAND_WRITE_ADDR to a ptr of type __xdata uin8_t ptr
      ptr = (__xdata uint8_t *)COMMAND_WRITE_ADDR;
   }
   else if (addr == COMMAND_WRITE_LEFT)
   {
      ptr = (__xdata uint8_t *)COMMAND_WRITE_LEFT_ADDR;
   }
   else if (addr == COMMAND_WRITE_RIGHT)
   {
      ptr = (__xdata uint8_t *)COMMAND_WRITE_RIGHT_ADDR;
   }
   else if (addr == DATA_WRITE_LEFT)
   {
      ptr = (__xdata uint8_t *)DATA_WRITE_LEFT_ADDR;
   }
   else if (addr == DATA_WRITE_RIGHT)
   {
      ptr = (__xdata uint8_t *)DATA_WRITE_RIGHT_ADDR;
   }
   else
   {
      ERROR_LOG("Unknown Memory Addr! = %d", addr);
      return;
   }
   // write at address
   *ptr = val;
}

/**
 * @brief Logic that return which controller needs to be selected based on the
 * column value
 * @param column 
 * @return uint8_t 
 */
uint8_t glcdControllerSelect(uint8_t column)
{
   // left controller
   if (column < MAX_COLUMN_PER_CONTROLLER)
   {
      return COLUMN_SELECT_LEFT;
   }
   else // right controller
   {
      return COLUMN_SELECT_RIGHT;
   }
}

/**
 * @brief Function that has the logic  to select the column and page to be written to
 * 
 * @param column 
 * @param page 
 */
void glcdGoToAddr(uint8_t column, uint8_t page)
{
   uint8_t controllerSelect = glcdControllerSelect(column);

   if (controllerSelect == COLUMN_SELECT_LEFT)
   {
      // Set X Address(Page Mask)
      gLcdWriteToRegister(COMMAND_WRITE_LEFT, PAGE_MASK | page);
      busyWait();

      // Set Y Address(Y Mask)
      gLcdWriteToRegister(COMMAND_WRITE_LEFT, Y_MASK | column);
      busyWait();
   }
   else if (controllerSelect == COLUMN_SELECT_RIGHT) // right controller
   {
      column = column - MAX_COLUMN_PER_CONTROLLER;

      // Set X Address
      gLcdWriteToRegister(COMMAND_WRITE_RIGHT, PAGE_MASK | page);
      busyWait();

      // Set Y Address
      gLcdWriteToRegister(COMMAND_WRITE_RIGHT, Y_MASK | column);
      busyWait();
   }
}

/**
 * @brief Logic to write value onto the specified address location
 * 
 * @param column 
 * @param page 
 * @param val 
 */
void glcdWrite(uint8_t column, uint8_t page, char val)
{
   glcdGoToAddr(column, page);

   // Send character
   uint8_t controllerSelect = glcdControllerSelect(column);

   if (controllerSelect == COLUMN_SELECT_LEFT)
   {
      gLcdWriteToRegister(DATA_WRITE_LEFT, val);
   }
   else
   {
      gLcdWriteToRegister(DATA_WRITE_RIGHT, val);
   }
   busyWait();
}

/**
 * @brief Logic to read from a specified address location
 * 
 * @param column 
 * @return uint8_t 
 */
uint8_t glcdRead(uint8_t column)
{
   uint8_t controllerSelect = glcdControllerSelect(column);

   __xdata uint8_t *ptr = NULL;

   if (controllerSelect == COLUMN_SELECT_LEFT)
   {
      ptr = (__xdata uint8_t *)DATA_READ_LEFT_ADDR;
   }
   else if (controllerSelect == COLUMN_SELECT_RIGHT)
   {
      ptr = (__xdata uint8_t *)DATA_READ_RIGHT_ADDR;
   }
   else
   {
      ERROR_LOG("UNKNOWN CONTROLLER");
   }

   uint8_t dataByte = *ptr;

   return dataByte;
}

/**
 * @brief Logic to set the pixel within a page to be set or reset
 * 
 * @param row 
 * @param column 
 * @param val 
 */
void setPixel(uint8_t row, uint8_t column, BitValue val)
{
   //setting y-axis to increment downwards
   row = 63 - row;
   
   //Dividing by total no. of pages (8) to get the page
   uint8_t page = row / 8;
   //gives pixel positon within the page
   uint8_t pixelPosition = row % 8;

   // set the column and page
   glcdGoToAddr(column, page);
   
   /*dummy read as per datasheet: To read the contents of display data RAM, twice access of read instruction is needed. 
   In first access, data in display data RAM is latched into output register. In second access, MPU can read data which 
   is latched. That is to read the data in display data RAM, it needs dummy read. But status read is not needed dummy 
   read.*/
   uint8_t pageByte = glcdRead(column);
   pageByte = glcdRead(column);

   // INFO_LOG("read pageByte = %d", pageByte);
   //  set or reset the bit
   if (val == ONE)
   {
      pageByte = pageByte | (1 << pixelPosition);
   }
   else if (val == ZERO)
   {
      //  Example: 00000001 << 2 = ~(00000100) = 11111011
      pageByte = pageByte & (~(1 << pixelPosition));
   }

   // INFO_LOG("write pageByte = %d", pageByte);
   glcdWrite(column, page, pageByte);
}

/**
 * @brief Logic to clear GLCD
 * 
 */
void glcdClear()
{
   for (uint8_t column = 0; column < 128; column++)
   {
      for (uint8_t page = 0; page < 8; page++)
      {
         glcdWrite(column, page, 0x00);
      }
   }
}

/**
 * @brief Logic to print a character on the screen
 * 
 * @param column 
 * @param page 
 * @param c 
 */
void glcdWriteChar(uint8_t column, uint8_t page, char c)
{
   // Subtracting c from ASCII value of SPACE; each character takes three pages (5x3)
   uint8_t offset = (c - 0x20) * CHARACTER_WIDTH;
   for (uint8_t i = 0; i < CHARACTER_WIDTH; i++)
   {
      // INFO_LOG("Column: %u,Page:  %u, Value: %u",column, page, font[offset + i] );
      glcdWrite(column, page, font[offset + i]);
      column++;
   }
}

/**
 * @brief Functio to clear out a string
 * 
 * @param column 
 * @param page 
 * @param size 
 */
void gcldClearString(uint8_t column, uint8_t page, uint8_t size)
{
   for (uint8_t i = 0; i < size; i++)
   {
      glcdWriteChar(column, page, 0x20);
      column += CHARACTER_WIDTH + 1;
   }
}

/**
 * @brief Function to write a string at a location
 * 
 * @param column 
 * @param page 
 * @param string 
 */
void glcdWriteString(uint8_t column, uint8_t page, char string[])
{
   uint8_t i = 0;
   while (string[i] != '\0')
   {
      glcdWriteChar(column, page, string[i]);
      // INFO_LOG("%c", string[i]);
      i++;
      column += CHARACTER_WIDTH + 1;
   }
}

/**
 * @brief Logic to find the absolute between two values
 * 
 * @param value1 
 * @param value2 
 * @return uint8_t 
 */
uint8_t absolute(int value1, int value2)
{
   uint8_t result;
   if (value1 > value2)
   {
      result = value1 - value2;
   }
   else
   {
      result = value2 - value1;
   }
   return result;
}

/**
 * @brief Logic to plot graph on LCD based on Bresenham's Line algorithm
 * 
 * @param x1 
 * @param y1 
 * @param x2 
 * @param y2 
 */
void glcdDrawGraph(int x1, int y1, int x2, int y2)
{
   int slope = absolute(y1, y2) - absolute(x1, x2);
   if (slope > 0)
   {
      // swapping x1 and y1 values
      int temp;
      temp = x1;
      x1 = y1;
      y1 = temp;

      // swaping x2 and y2 values
      temp = x2;
      x2 = y2;
      y2 = temp;
   }

   if (x1 > x2)
   {
      // swapping x1 and x2 values
      int temp;
      temp = x1;
      x1 = x2;
      x2 = temp;

      // swapping y1 and y2 values
      temp = y1;
      y1 = y2;
      y2 = temp;
   }

   int deltaX = x2 - x1;
   int deltaY = absolute(y2, y1);
   int error = deltaX / 2;
   int yStep;
   if (y1 < y2)
   {
      yStep = 1;
   }
   else
   {
      yStep = -1;
   }

   int y = y1;
   for (int x = x1; x <= x2; x++)
   {
      if (slope > 0)
      {
         setPixel(x, y, 1);
      }
      else
      {
         setPixel(y, x, 1);
      }
      error = error - deltaY;
      if (error < 0)
      {
         y = y + yStep;
         error = error + deltaX;
      }
   }
}

/**
 * @brief Function that converts an integer value to its ASCII equivalent
 * 
 * @param val 
 * @param result 
 * @return uint8_t Returns the length of the string
 */
uint8_t itoa(uint8_t val, char result[])
{
   if (val == 0)
   {
      result[0] = '0';
      return 1;
   }

   uint8_t count = 0;
   uint8_t digits[3];
   while (val != 0)
   {
      //gets LSB
      digits[count] = val % 10;
      //gets MSB
      val = val / 10;
      count++;
   }
   
   //feeding the converted string to result[i]
   uint8_t i = 0;
   for (int j = count - 1; j >= 0; j--)
   {
      result[i] = '0' + digits[j];
      i++;
   }

   return count;
}

/**
 * @brief Prints the Oxygen level SPO2 on the GLCD screen
 * 
 * @param oxygen 
 */
void glcdUpdateSpo2(uint8_t oxygen)
{
   __xdata char oxygenLevel[5]; // max 3 digits + % + NULL char
   uint8_t size = itoa(oxygen, oxygenLevel);
   oxygenLevel[size] = '%';
   oxygenLevel[size + 1] = '\0';
   gcldClearString(SPO2_X_LOC, 1, 5);
   glcdWriteString(SPO2_X_LOC, 1, oxygenLevel);
}

/**
 * @brief Prints the BPM level on the GLCD screen
 * 
 * @param bpm 
 */
void glcdUpdateBpm(uint8_t bpm)
{
   __xdata char bpmString[4]; // max 3 digits + NULL char
   uint8_t size = itoa(bpm, bpmString);
   bpmString[size] = '\0';
   gcldClearString(BPM_X_LOC, 1, 5);
   glcdWriteString(BPM_X_LOC, 1, bpmString);
}

/**
 * @brief Prints the status of the sensor on the GLCD screen
 * 
 * @param status 
 */
void glcdUpdateStatus(char* status)
{
   gcldClearString(STATUS_X_LOC, 1, 15);
   glcdWriteString(STATUS_X_LOC, 1, status);
}

/**
 * @brief Initialization process of the GLCD as per datasheet
 * 
 */
void glcdInit()
{
   GLCD_RESET = 0;
   delay(1000);
   GLCD_RESET = 1;

   gLcdWriteToRegister(COMMAND_WRITE, 0xB8); // select first page 0
   delay(100);

   gLcdWriteToRegister(COMMAND_WRITE, 0x40); // select row 0
   delay(100);

   gLcdWriteToRegister(COMMAND_WRITE, 0x3F); // display on
   delay(100);

   glcdClear();

   glcdWriteString(STATUS_X_LOC, 0, "STATUS");
   glcdWriteString(SPO2_X_LOC, 0, "SPO2");
   glcdWriteString(BPM_X_LOC, 0, "BPM");
}

// global variables set to zero at init
uint8_t previousReadingX;
uint8_t previousReadingY;

/**
 * @brief Plots the IR LED reading on the GLCD
 * 
 * @param IrValue 
 */
void glcdPlotIrValue(uint8_t IrValue)
{
   //Scaling a uin8_t value (0-256) to be plotted between 0 to 32 on the LCD screen
   uint8_t y = IrValue >> 3;
   uint8_t x = previousReadingX + 2;
   
   //after rollover, clears the immediate next section of the graph
   for (uint8_t page = 2; page < 8; page++)
   {
      glcdWrite(previousReadingX + 1, page, 0x00);
      glcdWrite(previousReadingX + 2, page, 0x00);
   }

   // INFO_LOG("x: %d, Previous Y: %d, x+1: %d, y = %d", x, previousReadingY, x+1, y);
   glcdDrawGraph(previousReadingX, previousReadingY, x, y);
   
   if(previousReadingX == 126)
   {
      previousReadingX = 0;
      previousReadingY = 0;
   }
   else 
   {
     previousReadingX = x;
     previousReadingY = y;
   }
}

/**
 * @brief Function was used during testing code to generate a random value
 * @param min 
 * @param max 
 * @return int 
 */
int generateRandom(int min, int max)
{
   return min + rand() % (max - min + 1);
}

/**
 * @brief Function to test the LCD working
 * 
 */
void lcdTest()
{
   INFO_LOG("LCD Testing");

   // glcdWriteChar(0,0,'V');
   glcdWriteString(32, 0, "SPO2");
   // glcdWriteString(32,1, "97%");
   glcdWriteString(94, 0, "BPM");
   // glcdWriteString(94,1, "76");
   
   uint8_t x1 = 0;
   uint8_t y1 = 5;
   #if 0
   for(uint8_t i = 0; i < 127; i++)
   {
     uint8_t x2 = i;
     uint8_t y2 = generateRandom(0, 40);
     glcdDrawGraph(x1, y1, x2,y2);
     delay(500);
     x1 = x2;
     y1 =y2;
   }
   #endif

   while(1)
   {
      glcdPlotIrValue(generateRandom(40,160));
      delay(500);
   }
   
   // glcdWriteString()

   while (1)
      ;
}