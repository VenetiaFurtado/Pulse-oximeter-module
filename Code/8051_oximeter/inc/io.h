#ifndef _IO_H_
#define _IO_H_
/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
* This file contains the forward declaration of the functions that take user 
* input.
*******************************************************************************/

/******************************************************************************/
//                            INCLUDES
/******************************************************************************/
#include <stdint.h>

/******************************************************************************/
//                            FORWARD DECLARATIONS
/******************************************************************************/
/**
 * @brief Takes a maximum of maxDigits digits (no alphabets or special characters allowed)
 * input from the user and converts ASCII to unsigned integer
 * @param maxDigits 
 * @param maxVal Maximum value the user can enter
 * @return uint16_t 
 */
uint16_t getUserNumberInput(uint8_t maxDigits, uint16_t maxVal);

/**
 * @brief Takes a maximum of n character HEX input from user
 * @param maxChar Maximum characters user can enter
 * @param maxVal Maximum value the user can enter
 * @return uint16_t 
 */
uint16_t getUserHexInput(uint8_t maxChar, uint16_t maxVal);

#endif
