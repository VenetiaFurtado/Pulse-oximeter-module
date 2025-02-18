/*******************************************************************************
 * Author - Venetia Furtado
 * Final Project: Health Monitoring System
 * ECEN 5613 - Spring 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 04/26/2024
 *
 ********************************************************************************
 * This file contains code to set the GPIOA registers MODER, OTYPER, OSPEEDR and 
 * PUPDR to the appropriate functions. These were used by the pulse oximeter 
 * module pins RST, MFIO, SCL and SDA.
 * Reference: https://github.com/embeddedalpha/STM32F407Vx/blob/main/Src/Inc/GPIO/GPIO.c
 ******************************************************************************/
/******************************************************************************/
//                            INCLUDES
/******************************************************************************/
#include "gpio.h"
#include "stm32f4xx_hal.h"
/******************************************************************************/
//                            FUNCTION DEFINITION
/******************************************************************************/
/**
 * @brief Sets a GPIO pin to the appropriate function
 * 
 * @param Port 
 * @param pin 
 * @param function 
 * @param alternate_function 
 */
void GPIO_Pin_Setup(char Port, uint8_t pin, uint8_t function, uint8_t alternate_function)
{
	if (Port == 'A' || Port == 'a')
	{
		RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

		GPIOA->MODER |= ((0xC0 & function) >> 6) << (2 * pin);//MODER sets I/O direction
		GPIOA->OTYPER |= ((0x30 & function) >> 4) << (1 * pin);//Configures the output type of the I/O port
		GPIOA->OSPEEDR |= ((0x0C & function) >> 2) << (2 * pin);// configure the I/O output speed
		GPIOA->PUPDR |= ((0x03 & function) >> 0) << (2 * pin); // configure the I/O pull-up or pull-down

		if (alternate_function != NONE)
		{
			if (pin < 8)
				GPIOA->AFR[0] |= (alternate_function << (4 * (pin)));
			else
				GPIOA->AFR[1] |= (alternate_function << (4 * (pin - 8)));
		}
	}
	if (Port == 'B' || Port == 'b')
	{
		RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
		GPIOB->MODER |= ((0xC0 & function) >> 6) << (2 * pin);
		GPIOB->OTYPER |= ((0x30 & function) >> 4) << (1 * pin);
		GPIOB->OSPEEDR |= ((0x0C & function) >> 2) << (2 * pin);
		GPIOB->PUPDR |= ((0x03 & function) >> 0) << (2 * pin);

		if (alternate_function != NONE)
		{
			if (pin < 8)
				GPIOB->AFR[0] |= (alternate_function << (4 * (pin)));
			else
				GPIOB->AFR[1] |= (alternate_function << (4 * (pin - 8)));
		}
	}
	if (Port == 'C' || Port == 'c')
	{
		RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
		GPIOC->MODER |= ((0xC0 & function) >> 6) << (2 * pin);
		GPIOC->OTYPER |= ((0x30 & function) >> 4) << (1 * pin);
		GPIOC->OSPEEDR |= ((0x0C & function) >> 2) << (2 * pin);
		GPIOC->PUPDR |= ((0x03 & function) >> 0) << (2 * pin);

		if (alternate_function == NONE)
		{
			if (pin < 8)
				GPIOC->AFR[0] |= (alternate_function << (4 * (pin)));
			else
				GPIOC->AFR[1] |= (alternate_function << (4 * (pin - 8)));
		}
	}
}
