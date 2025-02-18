/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
* This file contains the logic for i2c driver.
*******************************************************************************/

/******************************************************************************/
//                            INCLUDES & DEFINES
/******************************************************************************/
#include <mcs51/8051.h>
#include <stdint.h>
#include "at89c51ed2.h"
#include "log.h"
#include "io.h"
#include "i2c.h"

#define SCL             P1_3
#define SDA             P1_2
#define NOP             __asm__("nop")

#define HEX_DUMP_LINE_SIZE 16


/******************************************************************************/
//                         FUNCTION DEFINITIONS
/******************************************************************************/

/**
 * @brief Toggles the clock
 * 
 */
void clock()
{
  NOP;
  SCL = 1;
  NOP;
  NOP;
  SCL = 0;
  NOP;
}

/**
 * @brief Checks if an acknowledgement has been given by the peripheral
 * 
 * @return int SUCCESS or FAIL
 */
int checkAcknowledgement()
{
  //check to see if the device is acking by pulling SDA low
  SDA = 1;
  NOP;
  NOP;
  SCL = 1;
  //Capturing value at SDA
  uint8_t value = SDA;
  NOP;
  SCL = 0;
  NOP;
  if(value != 0)
  {
    return FAIL;
  }
  return SUCCESS;
}

/**
 * @brief Logic for starting the I2C communication
 * 
 */
void start()
{
  SDA = 1;
  NOP;
  SCL = 1;
  NOP;
  SDA = 0;
  NOP;
  NOP;
  SCL = 0;
}

/**
 * @brief Logic to stop the I2C communication
 * 
 */
void stop()
{
  SDA = 0;
  NOP;
  NOP;
  SCL = 1;
  NOP;
  NOP;
  SDA = 1;
  NOP;
  NOP;
}

/**
 * @brief Logic to send an Acknowledgement after a read/write transaction
 * 
 */
void sendAcknowledge()
{
  SDA = 0;
  NOP;
  NOP;
  clock();
  SDA = 1;
  NOP;
  NOP;
}

/**
 * @brief Logic to send a Nack at the end of a Read/Write transaction
 * 
 */
void sendNAcknowledge()
{
  SDA = 1;
  NOP;
  NOP;
  clock();
  NOP;
  NOP;
}

/**
 * @brief Logic to reverse a byte; LSB of input become MSB of output.
 * @param input
 * @return uint8_t 
 */
uint8_t reverse(uint8_t input)
{
    uint8_t output = 0;
    
    for (int i = 0; i < 8; i++)
    {
        output = output << 1;
        //Bitwise AND-ing input with 0x01 to obtain its LSB and OR with output
        output = output | (input & 0x01);
        input = input >> 1;
    }
    return output;
}

/**
 * @brief Logic for sending the Control Byte
 * 
 * @param op enum READ/WRITE
 * @param deviceId device ID to be read/write from
 * @param addr address to be READ/WRITE from 
 */
void sendControlByte(const Operation op, uint8_t deviceId, uint16_t addr) 
{
  //Operation to get the upper 3 bits (b2,b1,b0)
  uint8_t blockAddress = (addr & 0x700) >> 8;

  uint8_t b0 = blockAddress & 0x01;
  blockAddress >>= 1; 
  uint8_t b1 = blockAddress & 0x01;
  blockAddress >>= 1;
  uint8_t b2 = blockAddress & 0x01;
  blockAddress >>= 1;

  DEBUG("Block Bits b2=%u \t b1=%u \t b0=%u\n\r", b2,b1,b0);

//Sending the device address
  for (int i = 0; i < 4; i++)
  {
    SDA = deviceId & 0x01;
    clock();
    deviceId = deviceId >> 1;
  }

  // block address b2
  SDA = b2;
  clock();

  // block address b1
  SDA = b1;
  clock();

  // block address b0
  SDA = b0;
  clock();

  //Read or Write
  SDA = op;
  clock();
}

/**
 * @brief Logic for sending the Control Byte
 *
 * @param op enum READ/WRITE
 * @param deviceId device ID to be read/write from
 */
void sendControlByteNoAddr(const Operation op, uint8_t deviceId)
{
	// Sending the device address
	for (int i = 0; i < 7; i++)
	{
    SDA = deviceId & 0x01;
    clock();
    deviceId = deviceId >> 1;
	}
  //Read or Write
  SDA = op;
  clock();
}

void i2cByteWrite(uint8_t dataByte)
{
  //Sending the data that needs to be written at addr
  uint8_t databyteMsbFirst = reverse(dataByte);
  for (int i = 0; i < 8; i++)
  {
    SDA = databyteMsbFirst & 0x01;
    databyteMsbFirst >>= 1;
    clock();
  }
}

uint8_t i2cByteRead()
{
  uint8_t dataByte = 0;
  for (int i = 0; i < 8; i++)
  {
    SCL = 1;
    // Bit packing each bit into dataByte to give MCU the data from requested address from MSB to LSB(little endian)
    dataByte = (dataByte << 1) | SDA;
    NOP;
    SCL = 0;
    NOP;
  }
  return dataByte;
}

/**
 * @brief Function that contains logic for the Read transaction (one byte) from the MAX30101
 * Refer to page 31, Figure 10 of datasheet
 * @param deviceId 
 * @param regAddr 
 * @return int 
 */
int readRegisterMAXWing(uint8_t deviceId, uint8_t regAddr)
{
  start();
  sendControlByteNoAddr(WRITE, deviceId);
  if (checkAcknowledgement() == FAIL)
  {
    ERROR_LOG("%s: Acknowledgement Failed", __func__);
    return FAIL;
  }

  uint8_t regAddressMsbFirst = reverse(regAddr);
  for (int i = 0; i < 8; i++)
  {
    SDA = regAddressMsbFirst & 0x01;
    regAddressMsbFirst >>= 1;
    clock();
  }
  if (checkAcknowledgement() == FAIL)
  {
    ERROR_LOG("%s Read address failed!", __func__);
    return FAIL;
  }
  start();
  sendControlByteNoAddr(READ, deviceId);
  if (checkAcknowledgement() == FAIL)
  {
    ERROR_LOG("%s: Acknowledgement Failed", __func__);
    return FAIL;
  }

  uint8_t dataByte = 0;
  for (int i = 0; i < 8; i++)
  {
    SCL = 1;
    // Bit packing each bit into dataByte to give MCU the data from requested address from MSB to LSB(little endian)
    dataByte = (dataByte << 1) | SDA;
    NOP;
    SCL = 0;
    NOP;
  }
  sendNAcknowledge();
  stop();

  return dataByte;
}

/**
 * @brief Function that contains logic for the Read transaction (multiple bytes) from the MAX30101
 * Refer to page 31, Figure 11 of datasheet
 * 
 * @param deviceId 
 * @param regAddr 
 * @param dataArray 
 * @param size 
 * @return int 
 */
int readBytesMAXWing(uint8_t deviceId, uint8_t regAddr, uint8_t dataArray[], uint8_t size)
{
  start();
  sendControlByteNoAddr(WRITE, deviceId);
  if (checkAcknowledgement() == FAIL)
  {
    ERROR_LOG("%s: Acknowledgement Failed", __func__);
    return FAIL;
  }

  uint8_t regAddressMsbFirst = reverse(regAddr);
  for (int i = 0; i < 8; i++)
  {
    SDA = regAddressMsbFirst & 0x01;
    regAddressMsbFirst >>= 1;
    clock();
  }
  if (checkAcknowledgement() == FAIL)
  {
    ERROR_LOG("%s Read address failed!", __func__);
    return FAIL;
  }

  start();
  sendControlByteNoAddr(READ, deviceId);
  if (checkAcknowledgement() == FAIL)
  {
    ERROR_LOG("%s: Acknowledgement Failed", __func__);
    return FAIL;
  }

  for (uint8_t k = 0; k < size; k++)
  {
    uint8_t dataByte = 0;
    for (int i = 0; i < 8; i++)
    {
      SCL = 1;
      // Bit packing each bit into dataByte to give MCU the data from requested address from MSB to LSB(little endian)
      dataByte = (dataByte << 1) | SDA;
      NOP;
      SCL = 0;
      NOP;
    }
    
    dataArray[k] = dataByte;

    // send ack for all recvd bytes except last
    if (k < size - 1)
    {
      sendAcknowledge();
    } // send nack for lasy read byte
    else
    {
      sendNAcknowledge();
    }
  }
  stop();

  return SUCCESS;
}

/**
 * @brief Logic for performing the write transaction for MAX30101
 * Refer to Pg.30 Figure 9 for Write transaction
 * @param deviceId 
 * @param regAddr 
 * @param regVal 
 * @return int 
 */
int writeRegisterMAXWing(uint8_t deviceId, uint8_t regAddr, uint8_t regVal)
{
  start();
  sendControlByteNoAddr(WRITE, deviceId);
  if (checkAcknowledgement() == FAIL)
  {
    ERROR_LOG("%s: Acknowledgement Failed", __func__);
  }
  uint8_t regAddressMsbFirst = reverse(regAddr);
  for (int i = 0; i < 8; i++)
  {
    SDA = regAddressMsbFirst & 0x01;
    regAddressMsbFirst >>= 1;
    clock();
  }
  if (checkAcknowledgement() == FAIL)
  {
    ERROR_LOG("%s Read address failed!", __func__);
    return FAIL;
  }
  //Sending the data that needs to be written at addr
  uint8_t databyteMsbFirst = reverse(regVal);
  for (int i = 0; i < 8; i++)
  {
    SDA = databyteMsbFirst & 0x01;
    databyteMsbFirst >>= 1;
    clock();
  }
  if (checkAcknowledgement() == FAIL)
  {
    ERROR_LOG("%s Write data failed!", __func__);
    return FAIL;
  }
  stop();
}

/**
 * @brief Tests the I2C read and write functionality
 * 
 */
int testI2c()
{
  uint8_t regVal;
  // Get current register value so that nothing is overwritten.
   
   regVal = readRegisterMAXWing(MAX30101, 0x0A);
   INFO_LOG("LOG 1: Value at location: %u", regVal);
   writeRegisterMAXWing(MAX30101, 0x0A, 0x01); // Write Register
   regVal = readRegisterMAXWing(MAX30101, 0x0A);
   INFO_LOG("LOG 2:Value at location: %u", regVal);

}
