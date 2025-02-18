/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
* This file contains the initialization and configuration of the MAXHUB module.
* References: https://github.com/sparkfun/SparkFun_Bio_Sensor_Hub_Library/blob/master/src/SparkFun_Bio_Sensor_Hub_Library.cpp 
* 
*******************************************************************************/
/******************************************************************************/
//                            INCLUDES
/******************************************************************************/

#include <mcs51/8051.h>
#include <stdint.h>
#include "at89c51ed2.h"

#include "i2c.h"
#include "io.h"
#include "log.h"
#include "maxhub.h"

#define MAX32664_ADDRESS  0b1010101 // 0b1010101

#define CMD_DELAY         20
#define RSTN P3_4
#define MFIO P1_4

#define XDATA __xdata

#define STATUS_LOG
/******************************************************************************/
//                  FUNCTION DEFINITIONS & FORWARD DECLARATIONS
/******************************************************************************/

/**
 * @brief Function to provide a hubDelayMs of timeMs
 *
 * @param timeUs
 */
void hubDelayMs(const uint8_t delayMs)
{
   for (uint8_t i = 0; i < delayMs; i++)
   {
      // delay of 1 ms
      for (uint16_t j = 0; j < 1000; j++)
      {
         __asm__("nop");
      }
   }
}

/**
 * @brief Logic for the I2C write transaction for the MAX32664 for multiple bytes
 * 
 * @param familyByte 
 * @param indexByte 
 * @param dataArray 
 * @param size 
 * @return int 
 */
int i2cMax32664WriteBytes(uint8_t familyByte, uint8_t indexByte, uint8_t dataArray[], uint8_t size)
{
   start();
   sendControlByteNoAddr(WRITE, MAX32664_ADDRESS);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s:%d Write address failed!", __func__, __LINE__);
      return FAIL;
   }

   // send family byte
   i2cByteWrite(familyByte);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Family Byte Write address failed!", __func__);
      return FAIL;
   }

   // send index byte
   i2cByteWrite(indexByte);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Index Byte Write address failed!", __func__);
      return FAIL;
   }

   for (uint8_t i = 0; i < size; i++)
   {
      uint8_t dataByte = dataArray[i];
      i2cByteWrite(dataByte);
      if (checkAcknowledgement() == FAIL)
      {
         ERROR_LOG("%s Data Byte Write %d failed!", __func__, i);
         return FAIL;
      }
   }
   stop();

   hubDelayMs(CMD_DELAY);

   start();
   sendControlByteNoAddr(READ, MAX32664_ADDRESS);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Read Byte failed!", __func__);
      return FAIL;
   }

   uint8_t statusByte = i2cByteRead();
   sendNAcknowledge();
   stop();

   return statusByte;
}

/**
 * @brief Logic for the I2C write transaction for writing 1 byte
 * 
 * @param familyByte 
 * @param indexByte 
 * @param dataByte 
 * @return int 
 */
int i2cMax32664WriteByte(uint8_t familyByte, uint8_t indexByte, uint8_t dataByte)
{
   int status;

   do
   {
      status = i2cMax32664WriteBytes(familyByte, indexByte, &dataByte, 1);
      INFO_LOG("retrying write");
   } while (ERR_DEVICE_BUSY == status);

   return status;
}

/**
 * @brief Logic for the I2C Read Transaction(specific to MAX32664)
 * 
 * @param familyByte 
 * @param indexByte 
 * @param writeByte 
 * @return int 
 */
int i2cMax32664ReadByte(uint8_t familyByte, uint8_t indexByte, uint8_t *writeByte)
{
   start();
   sendControlByteNoAddr(WRITE, MAX32664_ADDRESS);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Write address failed!", __func__);
      return FAIL;
   }

   // send family byte
   i2cByteWrite(familyByte);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Family Byte Write address failed!", __func__);
      return FAIL;
   }

   // send index byte
   i2cByteWrite(indexByte);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Index Byte Write address failed!", __func__);
      return FAIL;
   }

   // send write byte if necessary
   if (writeByte != NULL)
   {
      i2cByteWrite(*writeByte);
      if (checkAcknowledgement() == FAIL)
      {
         ERROR_LOG("%s Write Byte Write address failed!", __func__);
         return FAIL;
      }
   }

   stop();

   hubDelayMs(CMD_DELAY);

   start();
   sendControlByteNoAddr(READ, MAX32664_ADDRESS);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Read Byte failed!", __func__);
      return FAIL;
   }

   uint8_t statusByte = i2cByteRead();
   sendAcknowledge();

   if (statusByte != SFE_BIO_SUCCESS)
   {
      return statusByte;
   }

   uint8_t readByte = i2cByteRead();
   // send nack
   sendNAcknowledge();

   stop();

   return readByte;
}

/**
 * @brief Logic for implementing the Sequential Read for MAX23664
 * 
 * @param familyByte 
 * @param indexByte 
 * @param readArr 
 * @param size 
 * @return int 
 */
int i2cMax32664SequentialReadByte(uint8_t familyByte, uint8_t indexByte, uint8_t readArr[], uint8_t size)
{
   for (uint8_t i = 0; i < size; i++)
   {
      readArr[i] = 0;
   }

   start();
   sendControlByteNoAddr(WRITE, MAX32664_ADDRESS);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Write address failed!", __func__);
      return FAIL;
   }

   // send family byte
   i2cByteWrite(familyByte);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Family Byte Write address failed!", __func__);
      return FAIL;
   }

   // send index byte
   i2cByteWrite(indexByte);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Index Byte Write address failed!", __func__);
      return FAIL;
   }

   stop();

   hubDelayMs(CMD_DELAY);

   start();
   sendControlByteNoAddr(READ, MAX32664_ADDRESS);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Read Byte failed!", __func__);
      return FAIL;
   }

   uint8_t statusByte = i2cByteRead();
   sendAcknowledge();

   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s Status Byte = %d", __func__, statusByte);
      return statusByte;
   }

   for (uint8_t i = 0; i < size; i++)
   {
      readArr[i] = i2cByteRead();
      sendAcknowledge();
      hubDelayMs(CMD_DELAY);
#if 0
      if (i < size - 1)
      {
         sendAcknowledge();
      }
      else
      {
         // send nack after reading last byte
         sendNAcknowledge();
      }
#endif
   }

   stop();
   return SUCCESS;
}

/**
 * @brief Family Byte: WRITE_REGISTER (0x40), Index Byte: WRITE_MAX30101 (0x03), Write Bytes:
 * Register Address and Register Value
 * This function writes the given register value at the given register address
 * for the MAX30101 sensor and returns a boolean indicating a successful or
 * non-successful write.
 * @param regAddr 
 * @param regVal 
 * @return int 
 */
int writeRegisterMAX30101(uint8_t regAddr, uint8_t regVal)
{

   uint8_t dataArr[2];
   dataArr[0] = regAddr;
   dataArr[1] = regVal;

   return i2cMax32664WriteBytes(WRITE_REGISTER, WRITE_MAX30101, dataArr, 2);
}

/**
 * @brief Family Byte: READ_REGISTER (0x41), Index Byte: READ_MAX30101 (0x03), Write Byte:
 * Register Address
 * This function reads the given register address for the MAX30101 Sensor and
* returns the values at that register.
 * @param regAddr 
 * @return uint8_t 
 */
uint8_t readRegisterMAX30101(uint8_t regAddr)
{

   uint8_t data = i2cMax32664ReadByte(READ_REGISTER, READ_MAX30101, &regAddr);
   return data;
}

/**
 * @brief Reads what mode the MAX32664 is to
 * 
 * @return uint8_t 
 */
uint8_t readSensorHubMode()
{
   int mode = i2cMax32664ReadByte(READ_DEVICE_MODE, 0x00, NULL); // family and index byte.
   if (mode == FAIL)
   {
      ERROR_LOG("Error reading device mode!");
   }
   return mode;                                                      // Will return 0x00
}

/**
 * @brief Sets MAXHUB in application mode
 * 
 */
void setApplicationMode()
{
   INFO_LOG("Setting to Application Mode...");
   // i2cSetPin(RSTN, 0);
   RSTN = 0;
   // i2cSetPin(MFIO, 1);
   MFIO = 1;
   hubDelayMs(10*2);
   // i2cSetPin(RSTN, 1);
   RSTN = 1;
   hubDelayMs(50*2);
   // approx 1 sec delay
   for (uint8_t i = 0; i < 5; i++)
   {
      hubDelayMs(100);
   }

   if (readSensorHubMode() != APPLICATION_MODE)
   {
      ERROR_LOG("Application Mode not set!!!");
      return;
   }
   INFO_LOG("Application Mode Set");
}

/**
 * @brief Sets MAXHUB in Bootloader Mode
 * 
 */
void setBootloaderMode()
{
   // i2cSetPin(RSTN, 0);
   RSTN = 0;
   // i2cSetPin(MFIO, 0);
   MFIO = 0;
   hubDelayMs(10);
   // i2cSetPin(RSTN, 1);
   RSTN = 1;
   hubDelayMs(50);
}

/**
 * @brief Family Byte: HUB_STATUS (0x00), Index Byte: 0x00, No Write Byte.
 * The following function checks the status of the FIFO.
 * @return uint8_t 
 */
uint8_t readSensorHubStatus()
{

   uint8_t statusByte = i2cMax32664ReadByte(0x00, 0x00, NULL); // family and index byte.
   return statusByte;                                          // Will return 0x00
}

/**
 * @brief Family Byte: OUTPUT_MODE (0x10), Index Byte: SET_FORMAT (0x00),
 *Write Byte : outputType (Parameter values in OUTPUT_MODE_WRITE_BYTE)
 * 
 * @param outputType 
 * @return uint8_t 
 */
uint8_t setOutputMode(uint8_t outputType)
{

   if (outputType > SENSOR_ALGO_COUNTER) // Bytes between 0x00 and 0x07
      return FAIL;

   // Check that communication was successful, not that the IC is outputting
   // correct format.
   int statusByte = i2cMax32664WriteByte(OUTPUT_MODE, SET_FORMAT, outputType);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
      return statusByte;
   }
   return SFE_BIO_SUCCESS;
}

/**
 * @brief Family Byte: OUTPUT_MODE(0x10), Index Byte: WRITE_SET_THRESHOLD (0x01), Write byte: intThres
 *This function changes the threshold for the FIFO interrupt bit/pin. The
 *interrupt pin is the MFIO pin which is set to INPUT after initialization.
 * 
 * 
 * @param intThresh 
 * @return uint8_t 
 */
uint8_t setFifoThreshold(uint8_t intThresh)
{

   // Checks that there was succesful communcation, not that the threshold was
   // set correctly.
   uint8_t statusByte = i2cMax32664WriteByte(OUTPUT_MODE, WRITE_SET_THRESHOLD, intThresh);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
      return statusByte;
   }
   return SFE_BIO_SUCCESS;
}

/**
 * @brief Family Byte: ENABLE_ALGORITHM (0x52), Index Byte:ENABLE_AGC_ALGO (0x00)
 * This function enables (one) or disables (zero) the automatic gain control algorithm.
 * @param enable 
 * @return uint8_t 
 */
int agcAlgoControl(uint8_t enable)
{
   if (enable > 1)
   {
      return FAIL;
   }

   int statusByte = i2cMax32664WriteByte(ENABLE_ALGORITHM, ENABLE_AGC_ALGO, enable);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
      return statusByte;
   }
   return SFE_BIO_SUCCESS;
}

/**
 * @brief Family Byte: ENABLE_SENSOR (0x44), Index Byte: ENABLE_MAX30101 (0x03), Write
 *Byte: senSwitch  (parameter - 0x00 or 0x01).
 * This function enables the MAX30101.
 * @param senSwitch 
 * @return uint8_t 
 */
uint8_t max30101Control(uint8_t senSwitch)
{
   if (senSwitch > 1)
   {
      return FAIL;
   }

   // Check that communication was successful, not that the sensor is enabled.
   uint8_t statusByte = i2cMax32664WriteByte(ENABLE_SENSOR, ENABLE_MAX30101, senSwitch);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
      return statusByte;
   }
   return SFE_BIO_SUCCESS;
}

/**
 * @brief Family Byte: ENABLE_ALGORITHM (0x52), Index Byte:ENABLE_WHRM_ALGO (0x02)
 * This function enables (one) or disables (zero) the wrist heart rate monitor
 * algorithm.
 * @param mode 
 * @return uint8_t 
 */
uint8_t maximFastAlgoControl(uint8_t mode)
{
   if (mode > 2)
   {
      return FAIL;
   }

   int statusByte = i2cMax32664WriteByte(ENABLE_ALGORITHM, ENABLE_WHRM_ALGO, mode);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Recieved Error Status = %d", __func__, statusByte);
      return statusByte;
   }
   return SFE_BIO_SUCCESS;
}

/**
 * @brief Logic for configuring the MAXHUB only for algo data(heart rate & SPO2)
 * 
 * @param mode 
 */
void configBpm(uint8_t mode)
{
   uint8_t statusByte;

   statusByte = setOutputMode(ALGO_DATA); // Just the data
   INFO_LOG("setOutputMode Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   statusByte = setOutputMode(ALGO_DATA); // Just the data
   INFO_LOG("setOutputMode Status 2 = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   statusByte = setFifoThreshold(0x01); // One sample before interrupt is fired.
   INFO_LOG("setFifoThreshold Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   statusByte = agcAlgoControl(ENABLE);
   INFO_LOG("agcAlgoControl Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   statusByte = max30101Control(ENABLE);
   INFO_LOG("max30101Control Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   hubDelayMs(100);

   statusByte = maximFastAlgoControl(mode);
   INFO_LOG("maximFastAlgoControl Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   hubDelayMs(20);
   INFO_LOG("%s: configuration success", __func__);
}

/**
 * @brief Logic for configuring the MAX32664 with MAX30101 sensor data
 * 
 * @param mode 
 */
void configSensorBpm(uint8_t mode)
{
   int statusByte;

   statusByte = setOutputMode(SENSOR_AND_ALGORITHM);
   INFO_LOG("setOutputMode Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   statusByte = setOutputMode(SENSOR_AND_ALGORITHM);
   INFO_LOG("setOutputMode Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }


   statusByte = setFifoThreshold(0x01); // One sample before interrupt is fired.
   INFO_LOG("setFifoThreshold Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }


   statusByte = agcAlgoControl(ENABLE);
   INFO_LOG("agcAlgoControl Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   statusByte = max30101Control(ENABLE);
   INFO_LOG("max30101Control Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   statusByte = maximFastAlgoControl(mode);
   INFO_LOG("maximFastAlgoControl Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   hubDelayMs(2000);
   INFO_LOG("%s: configuration success", __func__);
}

/**
 * @brief Family Byte: READ_DATA_OUTPUT (0x12), Index Byte: NUM_SAMPLES (0x00), Write
 *Byte: NONE
 * This function returns the number of samples available in the FIFO.
 * @return uint8_t 
 */
uint8_t numSamplesOutFifo()
{
   int sampAvail = i2cMax32664ReadByte(READ_DATA_OUTPUT, NUM_SAMPLES, NULL);
   if (sampAvail == FAIL)
   {
      ERROR_LOG("Error reading numSamplesOutFifo");
      return 0;
   }
   return sampAvail;
}

/**
 * @brief Logic similar to readSensor Bpm function except that this function only read the
 * SP02 and heart rate values (algo data)
 * 
 * @param mode 
 * @param data 
 * @return int 
 */
int readBpm(uint8_t mode, BioData *data)
{
   uint8_t hubStatus = readSensorHubStatus();
   if (hubStatus == 1)
   {
      ERROR_LOG("%s: Hub Status Error : %d", __func__, hubStatus);
      return FAIL;
   }

   INFO_LOG("Status Byte = %d", hubStatus);

   uint8_t numSamples = numSamplesOutFifo();
   INFO_LOG("numSamples = %d", numSamples);
   if (numSamples == 0)
   {
      INFO_LOG("%s: No samples to read", __func__);
      return FAIL;
   }

   int statusByte;
   XDATA uint8_t dataArr[MAXFAST_ARRAY_SIZE + MAXFAST_EXTENDED_DATA];
   if (mode == 1)
   {
      statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, dataArr, MAXFAST_ARRAY_SIZE);
      printf_tiny("\n\rData from Hub\n\r");
      for (int i = 0; i < MAXFAST_ARRAY_SIZE; i++)
      {
         printf_tiny("%d\n\r", dataArr[i]);
      }
   }
   else if (mode == 2)
   {
      statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, dataArr, MAXFAST_ARRAY_SIZE + MAXFAST_EXTENDED_DATA);
   }

   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Status Error : %d", __func__, statusByte);
      return FAIL;
   }

   // Heart Rate formatting
   uint16_t heartRate = dataArr[0];
   heartRate = (heartRate << 8) | (dataArr[1]);
   heartRate /= 10;

   // Confidence formatting
   uint8_t confidence = dataArr[2];

   // Blood oxygen level formatting
   uint16_t oxygen = dataArr[3];
   oxygen = (oxygen << 8) | dataArr[4];
   oxygen /= 10;

   //"Machine State" - has a finger been detected?
   uint8_t status = dataArr[5];

   data->heartRate = heartRate;
   data->confidence = confidence;
   data->oxygen = oxygen;
   data->status = status;

   if (mode == 2)
   {
      // Sp02 r Value formatting
      uint16_t temp = dataArr[6];
      temp = (temp << 8) | dataArr[7];
      float rValue = temp;
      rValue = rValue / 10.0;

      // Extended Machine State formatting
      uint8_t extStatus = dataArr[8];

      data->rValue = rValue;
      data->extStatus = extStatus;
   }
#ifdef DEBUG
   switch (status)
   {
   case NO_READING:
      INFO_LOG("%s: Finger Status = NO_READING", __func__);
      break;
   case NOT_READY:
      INFO_LOG("%s: Finger Status = NOT_READY", __func__);
      break;
   case OBJECT_DETECTED:
      INFO_LOG("%s: Finger Status = OBJECT_DETECTED", __func__);
      break;
   case FINGER_DETECTED:
      INFO_LOG("%s: Finger Status = FINGER_DETECTED", __func__);
      break;
   default:
      ERROR_LOG("Unknown case!");
   }
#endif
   return SUCCESS;
}

/**
 * @brief Logic to read the status of the FIFO register (refer to Table 7, pg.25)
 * of the MAX32664
 * @param mode 
 * @param data 
 * @return int 
 */
int readSensorBpm(uint8_t mode, BioData *data)
{
   uint8_t hubStatus = readSensorHubStatus();
   if (hubStatus == 1)
   {
      ERROR_LOG("%s: Hub Status Error : %d", __func__, hubStatus);
      return FAIL;
   }

   INFO_LOG("Hub Status = %d", hubStatus);

   uint8_t numSamples = numSamplesOutFifo();
   if (numSamplesOutFifo() == 0)
   {
      INFO_LOG("%s: No samples to read", __func__);
      return FAIL;
   }

   INFO_LOG("Num Samples = %d", numSamples);

   int statusByte;
   XDATA uint8_t sensorData[MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY + MAXFAST_EXTENDED_DATA];
   if (mode == 1)
   {
      statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, sensorData, MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY);
      #if 0
      printf_tiny("\n\rData from Hub");
      for (int i = 0; i < MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY; i++)
      {
         printf_tiny("\n\r%d", sensorData[i]);
      }
      #endif
   }
   else if (mode == 2)
   {
      statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, sensorData, MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY + MAXFAST_EXTENDED_DATA);
   }

   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Status Error : %d", __func__, statusByte);
      return FAIL;
   }

   // Value of LED one....
   uint32_t irLed = sensorData[0];
   irLed = (irLed << 8) | sensorData[1];
   irLed = (irLed << 8) | sensorData[2];

   // Value of LED two...
   uint32_t redLed = sensorData[3];
   redLed = (irLed << 8) | sensorData[4];
   redLed = (irLed << 8) | sensorData[5];

   // -- What happened here? -- There are two uint32_t values that are given by
   // the sensor for LEDs that do not exists on the MAX30101. So we have to
   // request those empty values because they occupy the buffer:
   // bpmSenArr[6-11].

   // Heart Rate formatting
   uint16_t heartRate = sensorData[12];
   heartRate = (heartRate << 8) | (sensorData[13]);
   heartRate /= 10;

   // Confidence formatting
   uint8_t confidence = sensorData[14];

   // Blood oxygen level formatting
   uint16_t oxygen = sensorData[15];
   oxygen = (oxygen << 8) | sensorData[16];
   oxygen /= 10;

   //"Machine State" - has a finger been detected?
   uint8_t status = sensorData[17];

   data->irLed = irLed;
   data->redLed = redLed;

   data->heartRate = heartRate;
   data->confidence = confidence;
   data->oxygen = oxygen;
   data->status = status;

   if (mode == 2)
   {
      // Sp02 r Value formatting
      uint16_t temp = sensorData[18];
      temp = (temp << 8) | sensorData[19];
      float rValue = temp;
      rValue = rValue / 10.0;

      // Extended Machine State formatting
      uint8_t extStatus = sensorData[20];

      data->rValue = rValue;
      data->extStatus = extStatus;
   }
#ifdef STATUS_LOG
   switch (status)
   {
   case NO_READING:
      INFO_LOG("NO_READING");
      break;
   case NOT_READY:
      INFO_LOG("NOT_READY");
      break;
   case OBJECT_DETECTED:
      INFO_LOG("OBJECT_DETECTED");
      break;
   case FINGER_DETECTED:
      INFO_LOG("FINGER_DETECTED");
      break;
   case PRESSING_TOO_HARD:
      INFO_LOG("PRESSING_TOO_HARD");
      break;
   default:
      ERROR_LOG("UNKNOWN ERROR: %d", status);
   }
#endif
   return SUCCESS;
}

/**
 * @brief This function modifies the pulse width of the MAX30101 LEDs. All of the LEDs
 * are modified to the same width. This will affect the number of samples that
 * can be collected and will also affect the ADC resolution.
 * Default: 69us - 15 resolution - 50 samples per second.
 * Register: 0x0A, bits [1:0]
 * Width(us) - Resolution -  Sample Rate
 * 69us     -    15      -   <= 3200 (fastest - least resolution)
 * 118us    -    16      -   <= 1600
 * 215us    -    17      -   <= 1600
 * 411us    -    18      -   <= 1000 (slowest - highest resolution)
 * @param width
 * @return int
 */
int setPulseWidth(uint16_t width)
{

   uint8_t bits;
   uint8_t regVal;

   // Make sure the correct pulse width is selected.
   if (width == 69)
      bits = 0;
   else if (width == 118)
      bits = 1;
   else if (width == 215)
      bits = 2;
   else if (width == 411)
      bits = 3;
   else
      return FAIL;

   // Get current register value so that nothing is overwritten.
   regVal = readRegisterMAX30101(CONFIGURATION_REGISTER);
   regVal &= PULSE_MASK;                                  // Mask bits to change.
   regVal |= bits;                                        // Add bits
   writeRegisterMAX30101(CONFIGURATION_REGISTER, regVal); // Write Register

   return SFE_BIO_SUCCESS;
}

/**
 * @brief This function changes the sample rate of the MAX30101 sensor. The sample
 * rate is affected by the set pulse width of the MAX30101 LEDs.
 * Default: 69us - 15 resolution - 50 samples per second.
 * Register: 0x0A, bits [4:2]
 * Width(us) - Resolution -  Sample Rate
 * 69us     -    15      -   <= 3200 (fastest - least resolution)
 * 118us    -    16      -   <= 1600
 * 215us    -    17      -   <= 1600
 * 411us    -    18      -   <= 1000 (slowest - highest resolution)
 * @param sampRate 
 * @return int 
 */
int setSampleRate(uint16_t sampRate)
{

   uint8_t bits;
   uint8_t regVal;

   // Make sure the correct sample rate was picked
   if (sampRate == 50)
      bits = 0;
   else if (sampRate == 100)
      bits = 1;
   else if (sampRate == 200)
      bits = 2;
   else if (sampRate == 400)
      bits = 3;
   else if (sampRate == 800)
      bits = 4;
   else if (sampRate == 1000)
      bits = 5;
   else if (sampRate == 1600)
      bits = 6;
   else if (sampRate == 3200)
      bits = 7;
   else
      return FAIL;

   // Get current register value so that nothing is overwritten.
   regVal = readRegisterMAX30101(CONFIGURATION_REGISTER);
   regVal &= SAMP_MASK;                                   // Mask bits to change.
   regVal |= (bits << 2);                                 // Add bits but shift them first to correct position.
   writeRegisterMAX30101(CONFIGURATION_REGISTER, regVal); // Write Register

   return SFE_BIO_SUCCESS;
}

/**
 * @brief Family Byte: IDENTITY (0x01), Index Byte: READ_MCU_TYPE, Write Byte: NONE
 * The following function returns a byte that signifies the microcontoller that
 * is in communcation with your host microcontroller. Returns 0x00 for the
 * MAX32625 and 0x01 for the MAX32660/MAX32664.
 * 
 * @return int 
 */
int checkDeviceType()
{
   int returnByte = i2cMax32664ReadByte(IDENTITY, READ_MCU_TYPE, NULL);
   if (returnByte == FAIL)
   {
      ERROR_LOG("Reaed Device Type failed");
      return FAIL;
   }

   // 0x01: MAX32660/MAX32664
   if (returnByte != 0x01)
   {
      ERROR_LOG("Device Type %d not expected", returnByte);
      return FAIL;
   }

   INFO_LOG("Device Type Check Success");
   return SUCCESS;
}

//#define BPM_DATA
#define SENSOR_DATA

// #define PLOT_DATA
#define SHOW_DATA

void lastTest()
{
   // set output mode 
   int status = i2cMax32664WriteByte(0x10, 0x00, 0x03);

   // set fifo threshold
   status = i2cMax32664WriteByte(0x10, 0x01, 0x01);

   // enable max30101
   status = i2cMax32664WriteByte(0x44, 0x03, 0x01);

   // enable maximfast
   status = i2cMax32664WriteByte(0x52, 0x02, 0x01);

   // read hub status
   while(1)
   {
   int readVal = i2cMax32664ReadByte(0x00, 0x00, NULL);
   printf("hub status = %x\n\r", readVal);
   hubDelayMs(100);
   }

}

/**
 * @brief Test code to check if the MAxHub is working as expected
 * 
 */
void testMaxHub()
{
   INFO_LOG("Entering Text Max HUB");
   setApplicationMode();
   // setBootloaderMode();

   // i2cSetPin(MFIO, 0);
   MFIO = 0;

   //lastTest();
   //while(1);

   checkDeviceType();

   uint8_t mode = 1;

#ifdef BPM_DATA
   configBpm(mode);
#endif
#ifdef SENSOR_DATA
   configSensorBpm(mode);
   setPulseWidth(118);
   setSampleRate(1600);
#endif
   XDATA BioData data;
   uint32_t counter = 0;

#if 0
   uint8_t continousMode[2] = {0x0A, 0x00};
   uint8_t val = i2cMax32664WriteBytes(CHANGE_ALGORITHM_CONFIG, 0x07, continousMode, 2);

   hubDelayMs(10);

   // read wearable Algorithm Suite 
   uint8_t writeByte = 0x0B;
   val = i2cMax32664ReadByte(READ_ALGORITHM_CONFIG, 0x07, &writeByte); // family and index byte.
   INFO_LOG("ALGO SUITE = %d", val);
#endif

   while (1)
   {
#ifdef BPM_DATA
      int status = readBpm(mode, &data);
      if (status == SUCCESS)
      {
         // INFO_LOG("CONFIDENCE = %u", data.confidence);
         if (data.confidence > 50)
         {
            INFO_LOG("HEART-RATE = %u", data.heartRate);
            INFO_LOG("OXYGEN = %u", data.oxygen);

            if (mode == 2)
            {
               INFO_LOG("rValue = %f", data.rValue);
               INFO_LOG("Extended Status = %u", data.extStatus);
            }
            data.confidence = 0;
         }
      }
#endif

#ifdef SENSOR_DATA
      int status = readSensorBpm(mode, &data);
      if (status == SUCCESS)
      {
         INFO_LOG("CONFIDENCE = %u", data.confidence);
         if (data.confidence > 50)
         {
#ifdef PLOT_DATA
            LOG("\n\r%d,%ld,%ld", counter++, data.irLed, data.redLed);
#endif
#ifdef SHOW_DATA
            INFO_LOG("IR LED = %lu", data.irLed);
            INFO_LOG("RED LED = %lu", data.redLed);

            INFO_LOG("HEART-RATE = %u", data.heartRate);
            INFO_LOG("OXYGEN = %u", data.oxygen);

            if (mode == 2)
            {
               INFO_LOG("rValue = %f", data.rValue);
               INFO_LOG("Extended Status = %u", data.extStatus);
            }
#endif
            data.confidence = 0;
         }
      }
#endif
      hubDelayMs(10);
   }

   // i2cSetPin(MFIO, 1);
   MFIO = 1;
}
