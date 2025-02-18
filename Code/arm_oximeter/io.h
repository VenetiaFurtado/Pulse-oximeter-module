#ifndef __IO_H__
#define __IO_H__

/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
  * This file contains all forward definitions of the functions that implement 
  * UART functionality. It also impelements log macros required for logging.
*******************************************************************************/

/******************************************************************************/
//                            INCLUDES & DEFINES
/******************************************************************************/
#include <stdio.h>
#include <stdint.h>

#define LOG(...)  { char msg[500]; sprintf(msg, __VA_ARGS__); printfASync(msg);}
#define ERROR_LOG(...) LOG("\n\r\033[1;31m" "ERROR: "__VA_ARGS__);LOG("\033[0m") //red
#define CURRENT_DUTY(...) LOG("\n\r\033[1;36m" __VA_ARGS__);LOG("\033[0m")  //light blue
#define CURRENT_DUTY_P(...) LOG("\n\r\x1b[35m" __VA_ARGS__);LOG("\x1b[0m") //purple
#define INFO_LOG(...) LOG("\n\r\033[38;5;214m" __VA_ARGS__);LOG("\033[0m") //orange
#define USER_OPTIONS(...) LOG("\n\r\033[1;36m" __VA_ARGS__);LOG("\033[0m")  //light blue

/******************************************************************************/
//                            FORWARD DECLARATIONS
/******************************************************************************/

/**
 * @brief USART2 Initialization Function
 * @param None
 * @retval None
 */
void UART2_Init(void);
/**
 * @brief This function puts one character into the TX circular buffer
 * 
 * @param One character from msg
 */
void putChar(char c);
/**
 * @brief This function contains an asynchronous (non-blocking) implementation of the printf function
 * 
 * @param char buffer to be transmitted 
 */
void printfASync(const char* msg);
/**
 * @brief Receives one character at a time from RX circular buffer
 * 
 * @param pointer to a valid char location 
 * @return int 
 */
int readUserInput(char* c);
/**
 * @brief This function is called when the user presses the RESET button
 * 
 */
void printWelcomeMessage(void);

uint16_t getUserNumberInput(uint8_t maxDigits, uint16_t maxVal); //max number of digits user can input

#endif
