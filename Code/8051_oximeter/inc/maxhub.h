#ifndef MAX_HUB_H_
#define MAX_HUB_H_

/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
* This file contains the forward declarations for the initialization and configuration of the MAXHUB module.
* References: https://github.com/sparkfun/SparkFun_Bio_Sensor_Hub_Library/blob/master/src/SparkFun_Bio_Sensor_Hub_Library.cpp 
* 
*******************************************************************************/
/******************************************************************************/
//                            DEFINES
/******************************************************************************/

#define DISABLE                0x00
#define ENABLE                 0x01

#define SET_FORMAT             0x00
#define WRITE_SET_THRESHOLD    0x01 //Index Byte for WRITE_INPUT(0x14)

#define MAXFAST_ARRAY_SIZE        6  // Number of bytes....
#define MAXFAST_EXTENDED_DATA     5

// MAX30101 related start
#define WRITE_MAX30101  0x03
#define READ_MAX30101 0x03

#define CONFIGURATION_REGISTER 0x0A
#define PULSE_MASK             0xFC
#define READ_PULSE_MASK        0x03
#define SAMP_MASK              0xE3
#define READ_SAMP_MASK         0x1C
#define MAX30101_LED_ARRAY     12 // 4 values of 24 bit (3 byte) LED values


// MAX30101 related end
typedef struct {
  uint32_t irLed;
  uint32_t redLed;
  uint16_t heartRate; // LSB = 0.1bpm
  uint8_t  confidence; // 0-100% LSB = 1%
  uint16_t oxygen; // 0-100% LSB = 1%
  uint8_t  status; // 0: Success, 1: Not Ready, 2: Object Detectected, 3: Finger Detected
  float    rValue;      // -- Algorithm Mode 2 vv
  int8_t   extStatus;   // --
  uint8_t  reserveOne;  // --
  uint8_t  resserveTwo; // -- Algorithm Mode 2 ^^
} BioData;

typedef enum 
{
   NO_READING = 0,
   NOT_READY = 1,
   OBJECT_DETECTED = 2,
   FINGER_DETECTED = 3,
   PRESSING_TOO_HARD = 4,
} FingerStatus;


/*Status Bytes are communicated back after every I-squared-C transmission and
are indicators of success or failure of the previous transmission.*/
typedef enum  
{

  SFE_BIO_SUCCESS          = 0x00,
  ERR_UNAVAIL_CMD,
  ERR_UNAVAIL_FUNC,
  ERR_DATA_FORMAT,
  ERR_INPUT_VALUE,
  ERR_TRY_AGAIN,
  ERR_BTLDR_GENERAL        = 0x80,
  ERR_BTLDR_CHECKSUM,
  ERR_BTLDR_AUTH,
  ERR_BTLDR_INVALID_APP,
  ERR_DEVICE_BUSY          = 0XFE,
  ERR_UNKNOWN              = 0xFF
} READ_STATUS_BYTE_VALUE;

/*Write Bytes under Family Byte: OUTPUT_MODE (0x10) and Index byte: SET_FORMAT
(0x00)*/
typedef enum  
{
  PAUSE                    = 0x00,
  SENSOR_DATA,
  ALGO_DATA,
  SENSOR_AND_ALGORITHM,
  PAUSE_TWO,
  SENSOR_COUNTER_BYTE,
  ALGO_COUNTER_BYTE,
  SENSOR_ALGO_COUNTER
} OUTPUT_MODE_WRITE_BYTE;

/*The family register bytes are the larger umbrella for all the Index and
Write Bytes listed below. You can not reference a nestled byte without first
referencing it's larger category: Family Register Byte.*/
typedef enum  
{
  HUB_STATUS               = 0x00,
  SET_DEVICE_MODE,
  READ_DEVICE_MODE,
  OUTPUT_MODE            = 0x10,
  READ_OUTPUT_MODE,
  READ_DATA_OUTPUT,
  READ_DATA_INPUT,
  WRITE_INPUT,
  WRITE_REGISTER           = 0x40,
  READ_REGISTER,
  READ_ATTRIBUTES_AFE,
  DUMP_REGISTERS,
  ENABLE_SENSOR,
  READ_SENSOR_MODE,
  CHANGE_ALGORITHM_CONFIG  = 0x50,
  READ_ALGORITHM_CONFIG,
  ENABLE_ALGORITHM,
  BOOTLOADER_FLASH         = 0x80,
  BOOTLOADER_INFO,
  IDENTITY                 = 0xFF

} FAMILY_REGISTER_BYTES;

// Index Byte under the Family Byte: IDENTITY (0xFF).
enum IDENTITY_INDEX_BYTES 
{
  READ_MCU_TYPE            = 0x00,
  READ_SENSOR_HUB_VERS     = 0x03,
  READ_ALGO_VERS           = 0x07

};

/*Write Bytes under Family Byte: SET_DEVICE_MODE (0x01) and Index
Byte: 0x00.*/
enum DEVICE_MODE_WRITE_BYTES 
{
  EXIT_BOOTLOADER          = 0x00,
  SFE_BIO_RESET            = 0x02,
  ENTER_BOOTLOADER         = 0x08

};

//Index Byte under the Family Byte: ENABLE_ALGORITHM (0x52).
typedef enum  
{
  ENABLE_AGC_ALGO  = 0x00,
  ENABLE_WHRM_ALGO = 0x02
} ALGORITHM_MODE_ENABLE_INDEX_BYTE;

// Index Byte under the Family Byte: ENABLE_SENSOR (0x44)
typedef enum 
{
  ENABLE_MAX30101 = 0x03,
  ENABLE_ACCELEROMETER
} SENSOR_ENABLE_INDEX_BYTE;

// Device Mode
typedef enum 
{
  APPLICATION_MODE              = 0x00,
  BOOTLOADER_MODE       = 0x08
} SENSOR_HUB_MODE;

// Index Byte under the Family Byte: READ_DATA_OUTPUT (0x12)
typedef enum  
{
  NUM_SAMPLES,
  READ_DATA
} FIFO_OUTPUT_INDEX_BYTE;

/******************************************************************************/
//                            FORWARD DECLARATION
/******************************************************************************/
/**
 * @brief Test code to check if the MAxHub is working as expected
 * 
 */
void testMaxHub();

#endif
