#ifndef _I2C_H_
#define _I2C_H_
/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
* This file contains the forward declarations for i2c driver
******************************************************************************/

/******************************************************************************/
//                            INCLUDES & DEFINES
/******************************************************************************/
#include <stdint.h>

#define MAX_ADDRESS     0x7FF
#define MAX_DATA        0xFF


#define EEPROM              0b0101 //0b1010
#define IOEXPANDER          0b1110  // 0b0111
#define MAX30101            0b1110101  // 0b1010111
#define PMIC                0b0101010 // 0b0101010

/******************************************************************************/
//                            ENUMERATIONS
/******************************************************************************/
typedef enum
{
    READ = 1,
    WRITE = 0
} Operation;
/******************************************************************************/
//                  FORWARD DECLARATION
/******************************************************************************/

/**
 * @brief Toggles the clock
 * 
 */
void clock();

/**
 * @brief Checks if an acknowledgement has been given by the peripheral
 * 
 * @return int SUCCESS or FAIL
 */
int checkAcknowledgement();

/**
 * @brief Logic for starting the I2C communication
 * 
 */
void start();

/**
 * @brief Logic to stop the I2C communication
 * 
 */
void stop();

/**
 * @brief Logic to reverse a byte; LSB of input become MSB of output.
 * @param input
 * @return uint8_t 
 */
uint8_t reverse(uint8_t input);

/**
 * @brief Logic for sending the Control Byte
 * 
 * @param op enum READ/WRITE
 * @param addr address to be READ/WRITE from 
 */
void sendControlByte(const Operation op, uint8_t deviceId, uint16_t addr);

/**
 * @brief Logic for sending the Control Byte
 *
 * @param op enum READ/WRITE
 * @param deviceId device ID to be read/write from
 */
void sendControlByteNoAddr(const Operation op, uint8_t deviceId);

void sendAcknowledge();

void sendNAcknowledge();

/**
 * @brief Logic to write a byte at any address(Figure 4.1 of Microchip 24LC16B datasheet)
 * 
 * @param addr Address to be written to
 * @param databyte Data to be written at address
 * @return int SUCCESS/FAIL
 */
int eebytew(uint16_t addr, uint8_t databyte);

/**
 * @brief Logic to read a byte at any address(Figure 7.1 of Microchip 24LC16B datasheet)
 * @param addr Address to be read from
 * @return int FAIL/data
 */
int eebyter(uint16_t addr);

/**
 * @brief Logic to read contents from EEPROM from start address to end address
 * 
 */
void hexDumpSequentialRead();

/**
 * @brief Performs a software reset of the I2C EEPROM using an algorithm that 
 * conforms to Microchip application note AN709
 */
void eereset();

int ioExpanderWriteAtPort(uint8_t portNumber, uint8_t bitValue);
int ioExpanderReadFromPort(uint8_t portNumber);

/**
 * @brief Send byte over i2c protocol
 */
void i2cByteWrite(uint8_t dataByte);

/**
 * @brief Read byte over i2c protocol
 */
uint8_t i2cByteRead();

// MAX30101-related
int readRegisterMAXWing(uint8_t deviceId, uint8_t regAddr);
int readBytesMAXWing(uint8_t deviceId, uint8_t regAddr, uint8_t dataArray[], uint8_t size);
int writeRegisterMAXWing(uint8_t deviceId, uint8_t regAddr, uint8_t regVal);

/**
 * @brief Tests the I2C read and write functionality
 * 
 */
int testI2c();

void testIoExpander();

#endif
