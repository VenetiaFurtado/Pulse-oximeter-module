/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
 *
 ********************************************************************************
 * This file contains the main function for the initialization of the functions
 * being used in the MAXHUB module
 ******************************************************************************/

/******************************************************************************/
//                            INCLUDES
/******************************************************************************/

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "main.h"
#include "define.h"
#include "init.h"
#include "io.h"
#include "buffer.h"
#include "rtc.h"
#include "i2c.h"
#include "maxhub.h"
/******************************************************************************/
//                            FUNCTION DEFINITION
/******************************************************************************/

/**
 * @brief Initialization of all functions
 * @retval int
 */
int main(void)
{
  // Initialization
  HAL_Init();
  SystemClock_Config();
  UART2_Init();

  printWelcomeMessage();

  testI2C();

#if 0
  LOG("\n\r Press 'T' to print time");
  LOG("\n\r Press 'S' to set date and time");

  char input;
  while (1)
  {
    int status = readUserInput(&input);
    if (status == PASS)
    {
      if (input == 'T')
      {
    	while(1)
    	{
        RTC_Time X;
        RTC_Date Y;
        RTC_Get_Date(&Y);
        RTC_Get_Time(&X);
        INFO_LOG("Date: %d/%d/%d", Y.month, Y.day, Y.year);
        INFO_LOG("Time: %d:%d:%d", X.hour, X.min, X.seconds);
        for(int i = 0; i < 1000; i++)
        {
        	for (int j = 0; j < 1000; j++);
        }
    	}
      }
      else if (input == 'S')
      {
        RTC_Time X;
        RTC_Date Y;
        USER_OPTIONS("Set Time (24 hour format)");
        LOG("\n\rEnter hour: ");
        X.hour = getUserNumberInput(2, 23);
        LOG("\n\rEnter minute: ");
        X.min = getUserNumberInput(2, 59);
        LOG("\n\rEnter second: ");
        X.seconds = getUserNumberInput(2, 59);
        
        USER_OPTIONS("Set Date (mm/dd/yyyy format)");
        LOG("\n\r Enter month: ");
        Y.month = getUserNumberInput(2, 12);
        LOG("\n\r Enter day: ");
        Y.day = getUserNumberInput(2, 31);
        LOG("\n\r Enter Year: ");
        Y.year = getUserNumberInput(4, 2100);
        USER_OPTIONS("Enter Week Day (1 - Monday; 7 - Sunday)");
        Y.week_day = getUserNumberInput(1, 7);

        RTC_Init();
        RTC_Set_Date(&Y);
        RTC_Set_Time(&X);
        RTC_Start();
      }
      else
      {
        ERROR_LOG("Invalid Input!");
      }
    }
  }
#endif
}
