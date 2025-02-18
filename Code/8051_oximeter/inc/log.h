#ifndef _LOG_H_
#define _LOG_H_

/*******************************************************************************
 * Author - Venetia Furtado
 * Lab 4 | Part 1
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 03/21/2024
*
********************************************************************************
* This file contains all the log macros used in this code.
  ******************************************************************************/

/******************************************************************************/
//                            INCLUDES & DEFINES
/******************************************************************************/

#include <stdio.h>

#define FAIL -1
#define SUCCESS 0
#ifdef ENABLE_DEBUG
#define DEBUG(...) printf_tiny("\n\r"__VA_ARGS__)
#else
#define DEBUG(...)
#endif
#define LOG(...) printf_tiny(__VA_ARGS__)
#define ERROR_LOG(...) printf_tiny("\n\r\033[1;31m" "ERROR: "__VA_ARGS__);printf_tiny("\033[0m")   //red
#define SUCCESS_LOG(...) printf_tiny("\n\r\033[1;32m" "SUCCESS: " __VA_ARGS__);printf_tiny("\033[0m")//green
#define INFO_LOG(...) printf("\n\r\033[38;5;214m" __VA_ARGS__);printf_tiny("\033[0m")//orange
#define USER_MENU(...) printf("\n\r\033[37m" __VA_ARGS__);printf_tiny("\033[0m") //white
#define USER_MENU_OPTION(...) printf("\n\r\033[38;2;255;105;180m" __VA_ARGS__);printf_tiny("\033[0m") //pink
#define USER_INPUT_CHECK(...) printf_tiny("\n\r\033[1;33m" __VA_ARGS__);printf_tiny("\033[0m") //yellow
#define ADDRESS(...) printf("\n\r\033[1;36m" __VA_ARGS__);printf_tiny("\033[0m")//light blue
#define HEX_DUMP_MSG(...) printf_tiny("\n\r\x1b[35m" __VA_ARGS__);printf_tiny("\x1b[0m")         //purple
#define HIGHLIGHT(...) printf("\n\r\033[48;5;4m" __VA_ARGS__);printf_tiny("\033[0m")
#define SECTION printf_tiny("\n\r**************************************************************************")

#endif
