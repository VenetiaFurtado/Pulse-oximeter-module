/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
*This file contains the function for the initialization of hardware and serial
*communication.
  ******************************************************************************/

/******************************************************************************/
//                            INCLUDES
/******************************************************************************/
#include <mcs51/8051.h>
#include "at89c51ed2.h"
#include "stdint.h"

/******************************************************************************/
//                      FUNCTION DEFINITIONS
/******************************************************************************/

/**
 * @brief Implements functionality that needs to be done before the main() function
 */
_sdcc_external_startup()
{
    AUXR |= 0x0C;                 //Setting the XRS0 and XRS1 bits to 1 to enable 1KB of internal XRAM
    return 0;                    //to indicate successful initialization
}

/**
 * @brief Initializing the 8051 serial communication hardware.
 * 
 */
void hardware_init()
{
  TMOD = 0x20;            // initialize Timer 1, Mode 2(auto-reload)
  TH1 = 0xFD;             // 9600bps baud rate
  //TH1 = 0xFA;             // 9600bps baud rate in X2 mode
  //CKCON0 |= 0x01;          //Configures system clock in X2 mode
  SCON = 0x50;            /*SCON register is loaded with 50H indiacting serial mode 1 where an 8 bit data is framed with
                            start and stop bits,REN enabled*/
  TR1 = 1;                // starts timer 1 to generate clk at baud rate
  TI = 1;                 //Set to 1 since int putchar(int c) expects it to be 1 initially.
  #if 0
  //Timer 0
  EA = 1; // Enables all interrupts

  EX1 = 1;
  IT1 = 0;
  
  ET0 = 1;                // Enables timer 0 interrupt
  TMOD |= 0x01;           //Configures Timer 0 in Mode 1
  TH0 = 0x4B;             //Initializing the timer register
  TL0 = 0xFE;
  TR0 = 1;                //Starts timer
  #endif
}
