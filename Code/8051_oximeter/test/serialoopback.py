################################################################################
# Author - Venetia Furtado
# Final Project: Health Monitoring System
# ECEN 5613 - Spring 2024 - Prof. McClure
# University of Colorado Boulder
# Revised 04/26/2024
#
################################################################################
# This file contains the code to transfer the data received at COM5 to COM4
################################################################################

import serial

# Define the serial ports and baud rates
input_serial_port = 'COM5'  # Change this to match your input serial port
output_serial_port = 'COM4'  # Change this to match your output serial port
baud_rate = 9600  # Change this to match your device's baud rate

# Open input and output serial ports
input_serial = serial.Serial(input_serial_port, baud_rate)
output_serial = serial.Serial(output_serial_port, baud_rate)

try:
    # Continuously read data from the input serial port and send it to the output serial port
    while True:
        # Read a line of data from the input serial port
        data = input_serial.readline().decode('ascii')
        print(data)

        if not data[0].isdigit():
            continue
        # If data is received, send it to the output serial port
        if data:
            output_serial.write(data.encode('ascii'))

# Handle keyboard interrupt (Ctrl+C)
except KeyboardInterrupt:
    print("\nProgram terminated by user.")

# Close the serial ports
finally:
    input_serial.close()
    output_serial.close()
