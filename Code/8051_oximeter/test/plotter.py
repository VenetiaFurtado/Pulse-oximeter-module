################################################################################
# Author - Venetia Furtado
# Final Project: Health Monitoring System
# ECEN 5613 - Spring 2024 - Prof. McClure
# University of Colorado Boulder
# Revised 04/26/2024
#
################################################################################
# This file contains the code to plot the values of the IR LED received.
################################################################################

import serial
import matplotlib.pyplot as plt

# Initialize serial communication
ser = serial.Serial('COM4', 9600)  # Change 'COM1' to the appropriate port and baud rate

# Initialize empty lists to store data
x_data = []
y_data = []


plot_count = 0
# Infinite loop to continuously receive and plot data
try:
    while plot_count < 500:
        plot_count += 1
        print(plot_count)

        # Read data from UART
        data = ser.readline().decode().strip()  # Decode received bytes into string

        # Parse data (assuming it's a comma-separated pair of values)
        if ',' in data:
            x_str, y_str = data.split(',')  # Assuming data is in the format "x,y"
            x = int(x_str)
            y = int(y_str)

            x_data.append(x)
            y_data.append(y)

# Close serial port and plot on program exit
finally:
    ser.close()


# Plot the data
plt.plot(x_data, y_data)
plt.xlabel('Sample Number')
plt.ylabel('LED output')
plt.title('UART Data Plot')
plt.grid(True)

# Save the plot as a JPG file
plt.savefig('uart_data_plot.jpg')

# Show the plot
plt.show()
