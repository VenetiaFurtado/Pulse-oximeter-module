/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
* This file contains the definitions of all the functions that receive an input
* and give an output through the serial port.
*******************************************************************************/

/******************************************************************************/
//                            INCLUDES
/******************************************************************************/
#include <mcs51/8051.h>
#include "at89c51ed2.h"
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include "log.h"
#include "io.h"

/******************************************************************************/
//                        FUNCTION DEFINITIONS
/******************************************************************************/

/**
 * @brief Puts a character onto the serial line
 * Note: Assuming hardware is initialized (TI = 1)
 * @param c
 * @return int
 */
int putchar(int c)
{
  while (TI != 1);       // Waits until TI flag is ready to transmit data, set by hardware
  TI = 0;               // Once data has been transmitted, TI flag is cleared by software
  SBUF = c;             // Transmits the ASCII value of c on the serial line
  return c;
}

/**
 * @brief Receives a character from the serial line
 * Note: Assuming hardware is initialized (RI = 1)
 * @param none
 * @return int
 */
int getchar(void)
{
  while (RI != 1);      // Waits until RI has received data
  RI = 0;               // Once data has been received, software clears the RI flag
  return SBUF;          // Returns value in SBUF to the calling function
}

/**
 * @brief Takes a maximum of maxDigits digits (no alphabets or special characters allowed)
 * input from the user and converts ASCII to unsigned integer
 * @param maxDigits 
 * @param maxVal Maximum value the user can enter
 * @return uint16_t 
 */
uint16_t getUserNumberInput(uint8_t maxDigits, uint16_t maxVal) //max number of digits user can input
{
  //take only a maximum n digit input (3 in this case)
  __xdata uint16_t value = 0;
  while (1)
  {
    value = 0;
    bool fail = false;
    printf_tiny("\n\rEnter a maximum %d digit number:", maxDigits);
    for (uint8_t i = 0; i < maxDigits; i++)
    {
      char c = getchar();               //  take user input
      if (c == '\r')                    //user enters ENTER key
      {
        break;                          
      }
      printf_tiny("%c", c);            //prints character on screen as user is typing
      if (c >= '0' && c <= '9')        // check if input is a number
      {
        uint8_t x = c - '0';           //converts user input(ASCII) to int
        value = value * 10 + x;        //calculates multi-digit ASCII input
        if (value > maxVal)
        {
          ERROR_LOG("Value entered is beyond range %x", maxVal);
          fail = true;
          break;
        }
      }
      else
      {
        ERROR_LOG("Enter only digit!");   //if user enters an other character than a number
        fail = true;
        break;
      }
    }

    if (fail == false)                      //if no previous errors have occured, break while loop
    {
      break;
    }
  }
  USER_INPUT_CHECK("User entered input = %d", value);
  return value;
}

/**
 * @brief Takes a maximum of n character HEX input from user
 * @param maxChar Maximum characters user can enter
 * @param maxVal Maximum value the user can enter
 * @return uint16_t 
 */
uint16_t getUserHexInput(uint8_t maxChar,uint16_t maxVal) //max number of digits user can input
{
  //take only a maximum n character input
  __xdata uint16_t value = 0;
  while (1)
  {
    value = 0;
    bool fail = false;
    printf_tiny("\n\rEnter a maximum %d character input:", maxChar);
    for (uint8_t i = 0; i < maxChar; i++)
    {
      char c = getchar();               //  take user input
      if (c == '\r')                    //user enters ENTER key
      {
        break;                          
      }
      printf_tiny("%c", c);            //prints character on screen as user is typing
      uint8_t x = 0;
      if (c >= '0' && c <= '9')        // check if input is a number
      {
        x = c - '0';           //converts user input(ASCII) to int
      }
      else if (c == 'A' || c == 'a')
      {
        x = 10;
      }
      else if (c == 'B' || c == 'b')
      {
        x = 11;
      }
      else if (c == 'C' || c == 'c')
      {
        x = 12;
      }
      else if (c == 'D' || c == 'd')
      {
        x = 13;
      }
      else if (c == 'E' || c == 'e')
      {
        x = 14;
      }
      else if (c == 'F' || c == 'f')
      {
        x = 15;
      }
      else
      {
        ERROR_LOG("Enter only values between 0 to 9 and A to F!");   //if user enters an other character than a number
        fail = true;
        break;
      }
      value = value * 16 + x;        //calculates multi-digit ASCII input
      if (value > maxVal)
      {
        ERROR_LOG("Value entered is beyond range %x", maxVal);
        fail = true;
        break;
      }
    }

    if (fail == false)                      //if no previous errors have occured, break while loop
    {
      break;
    }
  }
  USER_INPUT_CHECK("User entered input = %x", value);
  return value;
}
