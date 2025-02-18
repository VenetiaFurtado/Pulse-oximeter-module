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
 ******************************************************************************/
/******************************************************************************/
//                            INCLUDES
/******************************************************************************/

#include "main.h"
#include <stdbool.h>
#include "i2c.h"
#include "gpio.h"
#include "io.h"
#include "define.h"
#include "maxhub.h"

#define MAX32664_ADDRESS 0x55

/******************************************************************************/
//                            FUNCTION DEFINITIONS
/******************************************************************************/

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
   sendControlByte(WRITE, MAX32664_ADDRESS);
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

   delay(CMD_DELAY);

   start();
   sendControlByte(READ, MAX32664_ADDRESS);
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
   return i2cMax32664WriteBytes(familyByte, indexByte, &dataByte, 1);
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
   sendControlByte(WRITE, MAX32664_ADDRESS);
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

   delay(CMD_DELAY);

   start();
   sendControlByte(READ, MAX32664_ADDRESS);
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
   start();
   sendControlByte(WRITE, MAX32664_ADDRESS);
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

   delay(CMD_DELAY);

   start();
   sendControlByte(READ, MAX32664_ADDRESS);
   if (checkAcknowledgement() == FAIL)
   {
      ERROR_LOG("%s Read Byte failed!", __func__);
      return FAIL;
   }

   uint8_t statusByte = i2cByteRead();
   sendAcknowledge();

   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s Status Byte = %X", __func__, statusByte);
      return statusByte;
   }

   for (uint8_t i = 0; i < size; i++)
   {
      readArr[i] = 0;
   }

   for (uint8_t i = 0; i < size; i++)
   {
      readArr[i] = i2cByteRead();

      if (i < size - 1)
      {
         sendAcknowledge();
      }
      else
      {
         // send nack after reading last byte
         sendNAcknowledge();
      }
   }

   stop();
   return statusByte;
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
 * @brief Sets MAXHUB in application mode
 * 
 */
void setApplicationMode()
{
   i2cSetPin(RSTN, 0);
   i2cSetPin(MFIO, 1);
   delay(10);
   i2cSetPin(RSTN, 1);
   delay(50);
}

/**
 * @brief Sets MAXHUB in Bootloader Mode
 * 
 */
void setBootloaderMode()
{
   i2cSetPin(RSTN, 0);
   i2cSetPin(MFIO, 0);
   delay(10);
   i2cSetPin(RSTN, 1);
   delay(50);
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
      ERROR_LOG("%s: Recieved Error Status = %X", __func__, statusByte);
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
   uint8_t statusByte = i2cMax32664WriteByte(OUTPUT_MODE, WRITE_SET_THRESHOLD, intThresh);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Recieved Error Status = %X", __func__, statusByte);
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
uint8_t agcAlgoControl(uint8_t enable)
{

   if (enable > 1)
   {
      return FAIL;
   }

   uint8_t statusByte = i2cMax32664WriteByte(ENABLE_ALGORITHM, ENABLE_AGC_ALGO, enable);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Recieved Error Status = %X", __func__, statusByte);
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
      ERROR_LOG("%s: Recieved Error Status = %X", __func__, statusByte);
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

   uint8_t statusByte = i2cMax32664WriteByte(ENABLE_ALGORITHM, ENABLE_WHRM_ALGO, mode);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Recieved Error Status = %X", __func__, statusByte);
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
   INFO_LOG("setOutputMode Status = %X", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      //return;
   }

   statusByte = setOutputMode(ALGO_DATA); // Just the data
   INFO_LOG("setOutputMode Status 2 = %X", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      //return;
   }

   statusByte = setFifoThreshold(0x01); // One sample before interrupt is fired.
   INFO_LOG("setFifoThreshold Status = %X", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      //return;
   }

   statusByte = agcAlgoControl(ENABLE);
   INFO_LOG("agcAlgoControl Status = %X", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      //return;
   }

   statusByte = max30101Control(ENABLE);
   INFO_LOG("max30101Control Status = %X", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      //return;
   }

   statusByte = maximFastAlgoControl(mode);
   INFO_LOG("maximFastAlgoControl Status = %X", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      //return;
   }

   delay(2000);
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
      //return;
   }

   statusByte = setOutputMode(SENSOR_AND_ALGORITHM);
   INFO_LOG("setOutputMode Status = %d", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   statusByte = setFifoThreshold(0x01); // One sample before interrupt is fired.
   INFO_LOG("setFifoThreshold Status = %X", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   statusByte = agcAlgoControl(ENABLE);
   INFO_LOG("agcAlgoControl Status = %X", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
      // return;
   }

   statusByte = max30101Control(ENABLE);
   INFO_LOG("max30101Control Status = %X", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
     // return;
   }

   statusByte = maximFastAlgoControl(mode);
   INFO_LOG("maximFastAlgoControl Status = %X", statusByte);
   if (statusByte != SFE_BIO_SUCCESS)
   {
     // return;
   }

   delay(2000);
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
   uint8_t sampAvail = i2cMax32664ReadByte(READ_DATA_OUTPUT, NUM_SAMPLES, NULL);
   return sampAvail;
}

//#define STATUS_LOG

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

   if (numSamplesOutFifo() == 0)
   {
      //INFO_LOG("%s: No samples to read", __func__);
      return FAIL;
   }

   int statusByte;
   uint8_t dataArr[MAXFAST_ARRAY_SIZE + MAXFAST_EXTENDED_DATA];
   if (mode == 1)
   {
      statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, dataArr, MAXFAST_ARRAY_SIZE);
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
#ifdef STATUS_LOG
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
   return PASS;
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

   // INFO_LOG("Status Byte = %d", hubStatus);

   uint8_t numSamples = numSamplesOutFifo();
   // INFO_LOG("numSamples = %d", numSamples);
   if (numSamples == 0)
   {
      // INFO_LOG("%s: No samples to read", __func__);
      return FAIL;
   }

   int statusByte;
   //Refer to Pg. 25 of 32664 datasheet (Table 7)
   uint8_t dataArr[MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY + MAXFAST_EXTENDED_DATA];
   if (mode == 1)
   {
      statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, dataArr, MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY);
   }
   else if (mode == 2)
   {
      statusByte = i2cMax32664SequentialReadByte(READ_DATA_OUTPUT, READ_DATA, dataArr, MAXFAST_ARRAY_SIZE + MAX30101_LED_ARRAY + MAXFAST_EXTENDED_DATA);
   }

   if (statusByte != SFE_BIO_SUCCESS)
   {
      ERROR_LOG("%s: Status Error : %d", __func__, statusByte);
      return FAIL;
   }

   // Value of LED2(IR)
   uint32_t irLed = dataArr[0];
   irLed = (irLed << 8) | dataArr[1];
   irLed = (irLed << 8) | dataArr[2];

   // Value of LED1(RED)
   uint32_t redLed = dataArr[3];
   redLed = (redLed << 8) | dataArr[4];
   redLed = (redLed << 8) | dataArr[5];

   /*There are two uint32_t values that are given by
   the sensor for LEDs that do not exists on the MAX30101. So we have to
   request those empty values because they occupy the buffer:
   bpmSenArr[6-11]*/

   // Heart Rate formatting
   uint16_t heartRate = dataArr[12];
   heartRate = (heartRate << 8) | (dataArr[13]);
   heartRate /= 10;

   // Confidence formatting
   uint8_t confidence = dataArr[14];

   // Blood oxygen level formatting
   uint16_t oxygen = dataArr[15];
   oxygen = (oxygen << 8) | dataArr[16];
   oxygen /= 10;

   //"Machine State" - has a finger been detected?
   uint8_t status = dataArr[17];

   data->irLed = irLed;
   data->redLed = redLed;

   data->heartRate = heartRate;
   data->confidence = confidence;
   data->oxygen = oxygen;
   data->status = status;

   if (mode == 2)
   {
      // Sp02 r Value formatting
      uint16_t temp = dataArr[18];
      temp = (temp << 8) | dataArr[19];
      float rValue = temp;
      rValue = rValue / 10.0;

      // Extended Machine State formatting
      uint8_t extStatus = dataArr[20];

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
   default:
      ERROR_LOG("UNKNOWN");
   }
#endif
   return PASS;
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
      bits = 0; // 00
   else if (width == 118)
      bits = 1; // 01
   else if (width == 215)
      bits = 2; // 10
   else if (width == 411)
      bits = 3; // 11
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
 * @brief This function reads the CONFIGURATION_REGISTER (0x0A), bits [1:0] from the
 *MAX30101 Sensor. It returns one of the four settings in microseconds.
 * 
 * @return int 
 */
int readPulseWidth()
{

   uint8_t regVal;

   regVal = readRegisterMAX30101(CONFIGURATION_REGISTER);
   regVal &= READ_PULSE_MASK;

   if (regVal == 0)
      return 69;
   else if (regVal == 1)
      return 118;
   else if (regVal == 2)
      return 215;
   else if (regVal == 3)
      return 411;
   else
      return FAIL;
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
 * @brief This function reads the CONFIGURATION_REGISTER (0x0A), bits [4:2] from the
 *MAX30101 Sensor. It returns one of the 8 possible sample rates.
 * 
 * @return int 
 */
int readSampleRate()
{

   uint8_t regVal;

   regVal = readRegisterMAX30101(CONFIGURATION_REGISTER);
   regVal &= READ_SAMP_MASK;
   regVal = (regVal >> 2);

   if (regVal == 0)
      return 50;
   else if (regVal == 1)
      return 100;
   else if (regVal == 2)
      return 200;
   else if (regVal == 3)
      return 400;
   else if (regVal == 4)
      return 800;
   else if (regVal == 5)
      return 1000;
   else if (regVal == 6)
      return 1600;
   else if (regVal == 7)
      return 3200;
   else
      return FAIL;
}

#define DATA_SIZE 10

typedef struct
{
    uint32_t minInput;
    float scaleFactor;
} Scaler;

/**
 * @brief Logic to calculate the scale factor
 * 
 * @param input 
 * @param size 
 * @param scaleval 
 */
void scale_uint32_to_uint8(uint32_t *input, int size, Scaler* scaleval) {
    uint32_t max_input = 0;
    uint32_t minInput = UINT32_MAX;
    float scaleFactor;

    // Find min and max values in the dataset
    for (int i = 0; i < size; i++)
    {
       if (input[i] > max_input)
       {
          max_input = input[i];
       }
       if (input[i] < minInput)
       {
          minInput = input[i];
       }
    }

    // Calculate scale factor
    scaleFactor = (float)(UINT8_MAX) / (max_input - minInput);

    scaleval->minInput = minInput;
    scaleval->scaleFactor = scaleFactor;
}

//#define BPM_DATA
#define SENSOR_DATA


#define PLOT_DATA
//#define SHOW_DATA

/**
 * @brief Logic to test out the working of the MAXHUB configurations
 * 
 */
void testI2C()
{
   i2cInitGpio();
   delay(1000);
   setApplicationMode();
   // setBootloaderMode();
   delay(1000);
   i2cSetPin(MFIO, 0);
   uint8_t mode = 1;

#ifdef BPM_DATA
   configBpm(mode);
#endif
#ifdef SENSOR_DATA
   configSensorBpm(mode);

   uint16_t width = 118;
   setPulseWidth(width);

   uint16_t sampleRate = 1600;
   setSampleRate(sampleRate);
#endif
   BioData data;

   uint32_t irTuningData[DATA_SIZE];
   uint32_t counter = 0;
   bool tuningComplete = false;
   Scaler scaleValue;

   while (1)
   {
      #ifdef BPM_DATA
      int status = readBpm(mode, &data);
      if (status == PASS)
      {
         // INFO_LOG("CONFIDENCE = %u", data.confidence);
         if (data.confidence > 50)
         {
#ifdef PLOT_DATA
            LOG("%d#%d|\n", data.heartRate, data.oxygen);
            delay(1000);
#endif
#ifdef SHOW_DATA
            INFO_LOG("HEART-RATE = %u", data.heartRate);
            INFO_LOG("OXYGEN = %u", data.oxygen);

            if (mode == 2)
            {
               INFO_LOG("rValue = %f", data.rValue);
               INFO_LOG("Extended Status = %u", data.extStatus);
            }
            data.confidence = 0;
#endif
         }
      }
      #endif

      #ifdef SENSOR_DATA
      int status = readSensorBpm(mode, &data);
      if (status == PASS)
      {
         // INFO_LOG("CONFIDENCE = %u", data.confidence);
         if (data.confidence > 50)
         {
#ifdef PLOT_DATA
            if (tuningComplete == false)
            {
               if (counter < DATA_SIZE)
               {
                  INFO_LOG("Collecting tuning data ,sample = %d, val = %ld", counter, data.irLed);
                  irTuningData[counter] = data.irLed;
                  counter++;
               }
               else
               {
                  INFO_LOG("Calculating tuning data")
                  scale_uint32_to_uint8(irTuningData, DATA_SIZE, &scaleValue);
                  tuningComplete = true;
               }
            }
            else
            {
               uint8_t irvalue = (uint8_t)((data.irLed - scaleValue.minInput) * scaleValue.scaleFactor);
               LOG("%d#%d#%d#%d#\n", data.status, data.heartRate, data.oxygen, irvalue);
            }
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
   }

   i2cSetPin(MFIO, 1);
}
