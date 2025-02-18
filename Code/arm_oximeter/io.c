/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
*
********************************************************************************
  * This file contains all functions that implement UART functionality.
*******************************************************************************/

/******************************************************************************/
//                            INCLUDES
/******************************************************************************/
#include <string.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "define.h"
#include "io.h"
#include "buffer.h"
#include "stm32f4xx_hal.h"

/******************************************************************************/
//                            GLOBAL VARIABLES
/******************************************************************************/

UART_HandleTypeDef huart2;              //Stores the UART2 configuration
BufferType bufferRx;                    //Circular buffer for RX
BufferType bufferTx;                    //Circular buffer for TX

/******************************************************************************/
//                            FUNCTION DEFINITIONS
/******************************************************************************/

/**
 * @brief USART2 Initialization Function
 * @param None
 * @retval None
 */
void UART2_Init(void)
{
  #if 1
  /* Enable USART2 interrupt */
  HAL_NVIC_SetPriority(USART2_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(USART2_IRQn);

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 9600;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  HAL_UART_Init(&huart2);
  #endif

#if 0
  NVIC_SetPriority(USART2_IRQn, 1);
  NVIC_EnableIRQ(USART2_IRQn);

  //Enables USART2 and GPIOA clock
  RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

  GPIOA->MODER &= ~(0xFU << 4); // Reset bits 4:5 for PA2 and 6:7 for PA3
  GPIOA->MODER |=  (0xAU << 4);             //configures PA2 and PA3 as Alternate function pins
  
  GPIOA->AFR[0] |= (0x7 << 8);            // Sets pin A2  to USART2 TX alternate function
  GPIOA->AFR[0] |= (0x7 << 12);          // Sets pin A3 to USART2 RX alternate function


  USART2->BRR |= (52 << 4);             //Sets Baud rate to 9600
  USART2->BRR |= 15;

  // USART2 word length M, bit 12
  USART2->CR1 |= (0 << 12); // 0 - 1,8,n


  USART2->CR1 |= (1 << 13);              //Enables USART2
  USART2->CR1 |= (1 << 3);               //Transmitter enable
  USART2->CR1 |= (1 << 2);               //Receiver enable

  USART2->CR1 |= USART_CR1_RXNEIE; //enables the receive interrupt
  USART2->CR1 |= USART_CR1_TXEIE;  //enables the transmit interrupt*/
  
#endif

  USART2->CR1 |= (1 << 13);                           //Enables USART2
  USART2->CR1 |= (1 << 3);                            //Transmitter enable
  USART2->CR1 |= (1 << 2);                           //Receiver enable

  initBufferWithDefaultValues(&bufferRx);             // Initializes circular buffer with default values
  initBufferWithDefaultValues(&bufferTx);             // Initializes circular buffer with default values

  USART2->CR1 |= USART_CR1_RXNEIE;                // enables the receive interrupt
  USART2->CR1 |= USART_CR1_TXEIE;                  //enables the transmit interrupt


}

/**
 * @brief This function handles ISR for USART2 interrupt
 * 
 */
void USART2_IRQHandler(void)            
{
   if (USART2->SR & USART_SR_RXNE)      //Checks if this is a RX interrupt
   {
      char c = USART2->DR;              //Copies the value form the data register of USART into c; hardware automatically resets the flag when read
      putCharIntoBuffer(&bufferRx, c);  //Puts the value of c into the circular RX buffer
   }

   if (USART2->SR & USART_SR_TXE)       //Checks if this is a TX interrupt
   {
     char c;
     int status = getCharFromBuffer(&bufferTx, &c);  //Checks if the TX circular buffer has any data to be transmitted
     if (status == PASS)
     {
       USART2->DR = c;                    //If there is data, puts it on the terminal (DR is similar to SBUF of 8051)
     }
     else
     {
       USART2->CR1 &= ~(USART_CR1_TXEIE);    //Else disable the transmit interrupt
     }
   }
}

/**
 * @brief This function puts one character into the TX circular buffer
 * 
 * @param One character from msg
 */
void putChar(char c)
{
  putCharIntoBuffer(&bufferTx, c);          
}

/**
 * @brief This function contains an asynchronous (non-blocking) implementation of the printf function
 * 
 * @param char buffer to be transmitted 
 */
void printfASync(const char* msg)           //puts data on the TX circular buffer
{
  uint16_t len = strlen(msg);                // gets length of string
  for (uint16_t i = 0; i < len; i++)
  {
    putChar(msg[i]);                          // puts msg into putCharIntoBuffer
  }

  USART2->CR1 |= USART_CR1_TXEIE;             //enables the transmit interrupt
}

/**
 * @brief This function is called when the user presses the RESET button
 * 
 */
void printWelcomeMessage(void)
{
  LOG("\n\r\033[48;5;4m" "Welcome to ARM" "\033[0m");
}

/**
 * @brief Receives one character at a time from RX circular buffer
 * 
 * @param pointer to a valid char location 
 * @return int 
 */
int readUserInput(char *c) 
{
   int status = getCharFromBuffer(&bufferRx, c);
   return status;
}

uint16_t getUserNumberInput(uint8_t maxDigits, uint16_t maxVal) //max number of digits user can input
{
  //take only a maximum n digit input (3 in this case)
  uint16_t value = 0;
  while (1)
  {
    value = 0;
    bool fail = false;
    LOG("\n\rEnter a maximum %d digit number:", maxDigits);
    for (uint8_t i = 0; i < maxDigits; i++)
    {
      char c;

      while(1)
      {
      int status = readUserInput(&c);
           if (status == PASS)
           {
        	   break;
           }
      }

      if (c == '\r')                    //user enters ENTER key
      {
        break;
      }
      LOG("%c", c);            //prints character on screen as user is typing
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
  INFO_LOG("User entered input = %d", value);
  return value;
}
