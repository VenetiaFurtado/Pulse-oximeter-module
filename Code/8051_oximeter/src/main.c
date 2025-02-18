/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
* This file contains the main function for the initialization of the MAHHUB and
* the sensor modules
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
#include "init.h"
#include "io.h"
#include "log.h"
#include "i2c.h"
#include "lcd.h"
#include "datareceiver.h"

//#define MANUAL_ENTRY_MODE 1
/******************************************************************************/
//                  FUNCTION DEFINITIONS & FORWARD DECLARATIONS
/******************************************************************************/

/**
 * @brief Main function contains function calls to get user input and evaluate inputs received
 *
 * @return int
 */
int main()
{
  hardware_init();                // Function call to initialize hardware
  //lcdinit();
  glcdInit();
  //lcdTest();
  testMaxHub();

  //testMaxWing();

  while (1)
  {
    char input[20] = {0};
    for(uint8_t i = 0; i < 20; i++)
    {
      input[i] = '|';
    }

    uint8_t idx = 0;
#ifdef MANUAL_ENTRY_MODE
    INFO_LOG("Enter sample");
#endif
    while(1)
    {
      char c = getchar();

#ifdef MANUAL_ENTRY_MODE
      printf_tiny("%c", c);
#endif
      if (c == '\n' || c == '\r')
      {
        break;
      }

      input[idx] = c;
      idx++;
    }

#ifdef MANUAL_ENTRY_MODE
    INFO_LOG("Printing data");
    for(int i = 0; i < idx; i++)
    {
      printf_tiny("%d ", input[i]);
    }
#endif

    BioData data;
    readBiodata(input, &data);
    INFO_LOG("BPM= %d SPO2=%d\n\r", data.bpm, data.spo2);

    glcdUpdateStatus(getStatusString(data.status));
    if (data.status == FINGER_DETECTED)
    {
      glcdUpdateSpo2(data.spo2);
      glcdUpdateBpm(data.bpm);
      glcdPlotIrValue(data.irled);
    }
  }

  //testMaxWing();
 
  return 0;
}
