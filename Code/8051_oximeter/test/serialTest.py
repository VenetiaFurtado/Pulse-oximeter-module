################################################################################
# Author - Venetia Furtado
# Final Project: Health Monitoring System
# ECEN 5613 - Spring 2024 - Prof. McClure
# University of Colorado Boulder
# Revised 04/26/2024
#
################################################################################
# This file contains the test code to manually enter if the data being sent to 
# COM4 is being received correctly.
################################################################################

import serial
import time

# Define the serial port and baud rate
serial_port = 'COM4'  # Change this to match your serial port
baud_rate = 9600  # Change this to match your device's baud rate

# Open the serial port
ser = serial.Serial(serial_port, baud_rate)

try:
    # Prompt user for input and send data via serial port
    while True:
        #data_to_send = input("Enter data to send : ")
        
        data_to_send = "3#98#77#65#\n"

        print(data_to_send)
                
        # Encode and send data via serial port
        ser.write(data_to_send.encode('ascii', errors='ignore'))

        time.sleep(3)  # Pauses the program for 2 seconds


# Handle keyboard interrupt (Ctrl+C)
except KeyboardInterrupt:
    print("\nProgram terminated by user.")

# Close the serial port
finally:
    ser.close()
