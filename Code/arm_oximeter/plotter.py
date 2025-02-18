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
import json
import numpy as np
import matplotlib.pyplot as plt

# Initialize serial communication
ser = serial.Serial('COM5', 9600)  # Change 'COM1' to the appropriate port and baud rate

# Initialize empty lists to store data
cnt_data = []
ir_data = []
red_data = []
log_data = []

def build_log_format(val):
    return "\033[38;5;214m" + val + "\033[0m"

data_status = [build_log_format("NO_READING"),
               build_log_format("NOT_READY"),
               build_log_format("OBJECT_DETECTED"),
               build_log_format("FINGER_DETECTED"),
               build_log_format("UNKNOWN")]

plot_count = 0
# Infinite loop to continuously receive and plot data
try:
    while plot_count <= 500:
        # Read data from UART
        data = ser.readline().decode().strip()  # Decode received bytes into string

        if data in data_status:
            print("STATUS: ", data)
            continue

        #print(data)
        plot_count += 1
        print(plot_count)

        # Parse data (assuming it's a comma-separated pair of values)
        if ',' in data:
            cnt_str, ir_str, red_str = data.split(',')  # Assuming data is in the format "x,y,z"
            x = int(cnt_str)
            y = int(ir_str)
            z = int(red_str)

            cnt_data.append(x)
            ir_data.append(y)
            red_data.append(z)
            log_data.append((x,y,z))

# Close serial port and plot on program exit
finally:
    ser.close()



# Plot the data
plt.plot(cnt_data, ir_data)
plt.xlabel('Sample Number')
plt.ylabel('IR LED output')
plt.title('IR Data Plot')
plt.grid(True)

# Save the plot as a JPG file
plt.savefig('ir_data_plot.jpg')

# Show the plot
plt.show()

# Plot the data
plt.plot(cnt_data, red_data, label='RED')

plt.xlabel('Sample Number')
plt.ylabel('Red LED output')
plt.title('Red Data Plot')
plt.grid(True)

# Save the plot as a JPG file
plt.savefig('red_data_plot.jpg')

# Show the plot
plt.show()

# write to file
a = np.array(log_data)
np.savetxt('data.txt', a, fmt='%d')
#b = np.loadtxt('test1.txt', dtype=int)
#a == b

