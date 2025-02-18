/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
* This file contains the function to parse the received serial data into Bio Data values
*******************************************************************************/

/******************************************************************************/
//                            INCLUDES
/******************************************************************************/

#include <mcs51/8051.h>
#include "at89c51ed2.h"
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include "io.h"
#include "log.h"
#include "datareceiver.h"

/******************************************************************************/
//                  FUNCTION DEFINITIONS & FORWARD DECLARATIONS
/******************************************************************************/

/**
 * @brief Function to convert enum value to string
 * 
 * @param status 
 * @return const char* 
 */
const char* getStatusString(FingerStatus status)
{
  switch (status)
  {
  case NO_READING:
    return "NO READING";
  case NOT_READY:
    return "NOT READY";
  case OBJECT_DETECTED:
    return "OBJECT DETECTED";
  case FINGER_DETECTED:
    return "FINGER DETECTED";
  default:
    return "UNKNOWN";
  }
}

/**
 * @brief Parses biodata values from input string
 * 
 * @param input 
 * @param data 
 */
void readBiodata(char input[], BioData* data)
{
    uint8_t status = 0;
    uint8_t idx = 0;
    uint8_t bpm = 0;
    uint8_t spo2 = 0;
    uint8_t irled = 0;

    while(input[idx] != '#')
    {
        // gives integer value
        uint8_t digit = input[idx] - '0';
        status = status*10 + digit;
        idx++;
    }
    idx++;
    INFO_LOG("%s: Status = %d", __func__, status);

    while(input[idx] != '#')
    {
        // gives integer value
        uint8_t digit = input[idx] - '0';
        bpm = bpm*10 + digit;
        idx++;
    }
    idx++;

    INFO_LOG("%s: BPM = %d", __func__, bpm);
    
    while(input[idx] != '#')
    {
        uint8_t digit = input[idx] - '0';
        //ascii to integer conversion
        spo2 = spo2*10 + digit;
        idx++;
    }
    idx++;
    INFO_LOG("%s: SPO2 = %d", __func__, spo2);

    while(input[idx] != '#')
    {
        uint8_t digit = input[idx] - '0';
        irled = irled*10 + digit;
        idx++;
    }
    INFO_LOG("%s: IRLED = %d", __func__, irled);

    data->status = status;
    data->bpm = bpm;
    data->spo2 = spo2;
    data->irled = irled;
}
