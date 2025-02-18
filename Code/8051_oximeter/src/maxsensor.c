/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/18/2024
 *
 ********************************************************************************
 * This file contains the configuartion of the registers to setup the MAXHUB WING
 * module to calculate the SPO2, heart rate and IR LED values.
 * References: https://os.mbed.com/teams/Maxim-Integrated/code/MAX30205_Demo/
 * https://os.mbed.com/teams/Maxim-Integrated/code/MAX30101WING_HR_SPO2/
 *******************************************************************************/
/******************************************************************************/
//                            INCLUDES
/******************************************************************************/
#include <mcs51/8051.h>
#include "at89c51ed2.h"
#include "i2c.h"
#include "log.h"

#define PMIC_ENABLE           P1_5

// PMIC Registers
#define BBB_EXTRA_ADRS        0x1C
#define BOOST_VOLTAGE         0x05

#define NUM_LEDS              2  // 2 LEDs for SpO2 mode
#define SIZE_PER_CHANNEL      3 // (3 bytes per channel - LED or IR)
#define BUFFER_SIZE           32
#define MAX_FIFO_BYTES NUM_LEDS *SIZE_PER_CHANNEL *BUFFER_SIZE // Max # Bytes in FIFO

/// MAX30101 Register Map
typedef enum
{
   InterruptStatus1 = 0x00,
   InterruptStatus2 = 0x01,
   InterruptEnable1 = 0x02,
   FIFO_WritePointer = 0x04,
   OverflowCounter = 0x05,
   FIFO_ReadPointer = 0x06,
   FIFO_DataRegister = 0x07,
   FIFO_Configuration = 0x08,
   ModeConfiguration = 0x09,
   SpO2Configuration = 0x0A,
   LED1_RED_PA = 0x0C,
   LED2_IR_PA = 0x0D,
   ModeControlReg1 = 0x11,
   ModeControlReg2 = 0x12,
} MAX30101Registers;

/******************************************************************************/
//                  FUNCTION DEFINITIONS & FORWARD DECLARATIONS
/******************************************************************************/

/**
 * @brief Logic to provide delay
 * 
 * @param val 
 */
void sensor_delay(uint16_t val)
{
   for (uint16_t i = 0; i < val; i++)
      ;
}

/**
 * @brief Logic for initialization of the onboard PMIC
 * 
 */
void pmicInit()
{
   // enable passive pull down.
   writeRegisterMAXWing(PMIC, BBB_EXTRA_ADRS, 0x40);

   // set voltage to 4.5V
   PMIC_ENABLE = 0;
   writeRegisterMAXWing(PMIC, BOOST_VOLTAGE, 0x08);
   PMIC_ENABLE = 1;
}

/**
 * @brief Logic to write into a register and read from the same to cross-check if
 * correct value has been set by the host.
 * @param deviceId 
 * @param regAddr 
 * @param regVal 
 * @return int 
 */
int configureSensorRegister(uint8_t deviceId, uint8_t regAddr, uint8_t regVal)
{
   int status = writeRegisterMAXWing(deviceId, regAddr, regVal);
   if (status != SUCCESS)
   {
      ERROR_LOG("Write to Register %u Failed", regAddr);
      return FAIL;
   }

   sensor_delay(500);

   // check if register is set
   uint8_t val = readRegisterMAXWing(deviceId, regAddr);
   if (val != regVal)
   {
      ERROR_LOG("Register %d Expected %d and actual %d config does not match!", regAddr, regVal, val);
      return FAIL;
   }

   return SUCCESS;
}

/**
 * @brief Function containing the initialization sequence of the MAX30101
 * 
 */
void sensorInit()
{
   int status;

   // reset configuration
   uint8_t modeConfig = 0;
   modeConfig |= 0x01 << 6; // Set RESET bit (B6) of register ModeConfiguration
   modeConfig |= 0x03; // Sets to SPO2 mode
   status = writeRegisterMAXWing(MAX30101, ModeConfiguration, modeConfig);
   if (status != SUCCESS)
   {
      ERROR_LOG("1 Reset Conguration Failed");
      return;
   }

   sensor_delay(500);
#if 1
   uint8_t interruptEnableRegister = 0;
   //sends an interrupt if the FIFO of the MAX30101 is full
   interruptEnableRegister |= 0x01 << 7; // A_FULL_EN
   //sends an interrupt if a sample is available to be read
   interruptEnableRegister |= 0x01 << 6; // PPG_RDY_EN
   status = configureSensorRegister(MAX30101, InterruptEnable1, interruptEnableRegister);
   if (status != SUCCESS)
   {
      ERROR_LOG("2 Interrupt Enable Register Failed");
     // return;
   }
#endif

   // configure FIFO
   uint8_t fifoConfig = 0;
   fifoConfig |= 0x2;      // FIFO_A_FULL, interrupt when 30 samples in FIFO
   //fifoConfig |= 0x01 << 4; // Fifo rollover enable
   //fifoConfig |= 0x5 << 5; // Average out 32 samples 
   status = configureSensorRegister(MAX30101, FIFO_Configuration, fifoConfig);
   if (status != SUCCESS)
   {
      ERROR_LOG("3 FIFO Config Failed");
      // return;
   }

   // set spo2 config
   uint8_t spo2Config = 0;
   spo2Config |= 0x01 << 5; // sets resolution to 4096 nAfs
   spo2Config |= 0x01 << 2; // sets sample rate; SpO2 SR = 100Hz
   spo2Config |= 0x01;      // 16-bit ADC resolution ~118 us
   status = configureSensorRegister(MAX30101, SpO2Configuration, spo2Config);
   if (status != SUCCESS)
   {
      ERROR_LOG("4 SpO2 Config Failed");
      // return;
   }

#if 0
   uint8_t multiLedControlRegister2 = 0;
   multiLedControlRegister2 |= 0x03; // Slot 3 = green LED
   writeRegisterMAXWing(MAX30101, ModeControlReg2, multiLedControlRegister2);
   if (status != SUCCESS)
   {
      ERROR_LOG("5 Multi LED Control 2 Failed");
      return;
   }
#endif

   // Set LED drive currents
   //  Red LED; Pulse amp. = ~50mA (0xFF)
   status = configureSensorRegister(MAX30101, LED1_RED_PA, 0xFF);
   if (status != SUCCESS)
   {
      ERROR_LOG("6 Red LED Drive Current Conguration Failed");
      // return;
   }

   // IR LED; Pulse amp. = ~50mA (0xFF)
   status = configureSensorRegister(MAX30101, LED2_IR_PA, 0xFF);
   if (status != SUCCESS)
   {
      ERROR_LOG("7 IR LED Drive Current Conguration Failed");
      // return;
   }

   uint8_t multiLedControlRegister1 = 0;
   multiLedControlRegister1 |= 0x01;      // Slot 1 = Red LED
   multiLedControlRegister1 |= 0x02 << 4; // Slot 2 = IR LED
   writeRegisterMAXWing(MAX30101, ModeControlReg1, multiLedControlRegister1);
   if (status != SUCCESS)
   {
      ERROR_LOG("5 Multi LED Control Failed");
      return;
   }

#if 1
   // Resetting the write pointer to 0 as per datasheet
   status = writeRegisterMAXWing(MAX30101, FIFO_WritePointer, 0);
   if (status != SUCCESS)
   {
      ERROR_LOG("8 Resetting Write Pointer Failed");
      return;
   }
   // Resetting the read pointer to 0 as per datasheet
   status = writeRegisterMAXWing(MAX30101, FIFO_ReadPointer, 0);
   if (status != SUCCESS)
   {
      ERROR_LOG("9 Resetting Read Failed");
      return;
   }
#endif

   // Set operating mode
   modeConfig = 0;
   modeConfig |= 0x03; // Set SP02 mode
   status = configureSensorRegister(MAX30101, ModeConfiguration, modeConfig);
   if (status != SUCCESS)
   {
      ERROR_LOG("10 Setting operating mode Failed");
      // return;
   }

   sensor_delay(500);
}

/**
 * @brief Functions to get the size of the circular buffer (FIFO)
 * 
 * @param head 
 * @param tail 
 * @return uint8_t 
 */
uint8_t getBufferSizeInBytes(uint8_t head, uint8_t tail)
{
   uint8_t numBytes = 0;

   // head > tail
   if (head > tail) // Head is greater than tail
   {
      numBytes = head - tail;
   }
   // tail > head
   else if (head < tail) // Tail is greater than head
   {
      numBytes = (BUFFER_SIZE - tail) + head;
   }
   else
   {
      numBytes = 0;
   }

   numBytes = numBytes * SIZE_PER_CHANNEL * NUM_LEDS;

   return numBytes;
}

/**
 * @brief Function to read the number of Bytes in the FIFO
 * 
 * @param fifoData 
 * @return int 
 */
int readSensorFifo(uint8_t fifoData[])
{
   int result;

   // Get overflow counter
   int overflowCnt = readRegisterMAXWing(MAX30101, OverflowCounter);
   if (overflowCnt == FAIL)
   {
      ERROR_LOG("%s: Reading overflow counter fail", __func__);
      // return FAIL;
   }
   INFO_LOG("Overflow Count = %d", overflowCnt);
   sensor_delay(500);

   // Get write pointer (head)
   int writeIndex = readRegisterMAXWing(MAX30101, FIFO_WritePointer);
   if (writeIndex == FAIL)
   {
      ERROR_LOG("%s: Reading Write Index fail", __func__);
      // return FAIL;
   }
   INFO_LOG("Write ptr = %d", writeIndex);
   sensor_delay(500);

   // Get read pointer (tail)
   int readIndex = readRegisterMAXWing(MAX30101, FIFO_ReadPointer);
   if (readIndex == FAIL)
   {
      ERROR_LOG("%s: Reading Read Index fail", __func__);
      // return FAIL;
   }
   INFO_LOG("Read ptr = %d", readIndex);
   sensor_delay(500);
#if 0
   // Calculate num bytes to read
   uint8_t numBytes = getBufferSizeInBytes(writeIndex, readIndex);

   INFO_LOG("%s: Numbytes = %u", __func__, numBytes);
   if (numBytes == 0)
   {
      INFO_LOG("Nothing to read");
      return 0;
   }
#endif
   // read FIFO, numBytes-> number of bytes to be read
   result = readBytesMAXWing(MAX30101, FIFO_DataRegister, fifoData, 6);
   if (result == FAIL)
   {
      ERROR_LOG("%s: Reading FIFO fail", __func__);
      return FAIL;
   }

   return 6;
}

/**
 * @brief Gets the status of the interrupt registers
 * 
 */
void getInterruptStatus()
{
   int status = readRegisterMAXWing(MAX30101, InterruptStatus1);
   INFO_LOG("Interrupt status1 = %d", status);
   status = readRegisterMAXWing(MAX30101, InterruptStatus2);
   INFO_LOG("Interrupt status2 = %d", status);
}

/**
 * @brief Test code for MAXWING working
 * 
 */
void testMaxWing()
{
   pmicInit();
   sensorInit();

   __xdata uint8_t fifo[MAX_FIFO_BYTES];

   uint16_t counter = 0;

   while (1)
   {
      SECTION;
      uint8_t deviceID = readRegisterMAXWing(MAX30101, 0xFF);
      //INFO_LOG("Device ID: %d", deviceID);

      getInterruptStatus();
      int nreadBytes = readSensorFifo(fifo);

      //INFO_LOG("nReadBytes = %d", nreadBytes);
      if (nreadBytes != FAIL && nreadBytes > 0)
      {
         uint16_t ledRed = fifo[2];
         ledRed = (ledRed << 8) | fifo[1];

         uint16_t ledIr = fifo[5];
         ledIr = (ledIr << 8) | fifo[4];
/*
         if (ledIr == 0)
         {
            continue;
         }*/

         INFO_LOG("%u,red = %u ir = %u", counter++,ledRed,ledIr);
         /*
         for (int i = 0; i < nreadBytes; i++)
         {
            printf("i = %d, fifo[i] = %x \n\r", i, fifo[i]);
         }*/
      }
      // delay
      #if 1
            for (uint16_t i = 0; i < 100; i++)
      {
         sensor_delay(500);
      }
      #endif
   }
}
