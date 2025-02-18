#ifndef _DATARECEIVER_H_
#define _DATARECEIVER_H_
/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
* This file contains the forward declarations for the datareceiver.c file
******************************************************************************/
/******************************************************************************/
//                            INCLUDES & DEFINES
/******************************************************************************/
#include <stdint.h>
/******************************************************************************/
//                  FORWARD DECLARATIONS
/******************************************************************************/
typedef enum 
{
   NO_READING = 0,
   NOT_READY = 1,
   OBJECT_DETECTED = 2,
   FINGER_DETECTED = 3
} FingerStatus;

typedef struct
{
  uint8_t status;
  uint8_t bpm;
  uint8_t spo2;
  uint8_t irled;
} BioData;

/**
 * @brief Function to convert enum value to string
 * 
 * @param status 
 * @return const char* 
 */
const char* getStatusString(FingerStatus status);

/**
 * @brief Parses biodata values from input string
 * 
 * @param input 
 * @param data 
 */
void readBiodata(char input[], BioData* data);

#endif
