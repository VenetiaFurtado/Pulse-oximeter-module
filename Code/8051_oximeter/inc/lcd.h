#ifndef _LCD_H_
#define _LCD_H_
/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
* This file contains the forward declarations for LCD driver
******************************************************************************/
/******************************************************************************/
//                            INCLUDES & DEFINES
/******************************************************************************/
#include <stdint.h>
/******************************************************************************/
//                  FORWARD DECLARATION
/******************************************************************************/

/**
 * @brief Initialization process of the GLCD as per datasheet
 * 
 */
void glcdInit();

/**
 * @brief Function to test the LCD working
 * 
 */
void lcdTest();

/**
 * @brief Logic to print a character on the screen
 * 
 * @param column 
 * @param page 
 * @param c 
 */
void glcdWriteChar(uint8_t column, uint8_t page, char c);

/**
 * @brief Functio to clear out a string
 * 
 * @param column 
 * @param page 
 * @param size 
 */
void gcldClearString(uint8_t column, uint8_t page, uint8_t size);

/**
 * @brief Prints the Oxygen level SPO2 on the GLCD screen
 * 
 * @param oxygen 
 */
void glcdUpdateSpo2(uint8_t oxygen);

/**
 * @brief Prints the BPM level on the GLCD screen
 * 
 * @param bpm 
 */
void glcdUpdateBpm(uint8_t bpm);

/**
 * @brief Prints the status of the sensor on the GLCD screen
 * 
 * @param status 
 */
void glcdUpdateStatus(char* status);

/**
 * @brief Plots the IR LED reading on the GLCD
 * 
 * @param IrValue 
 */
void glcdPlotIrValue(uint8_t IrValue);

#endif