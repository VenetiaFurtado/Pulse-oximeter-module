################################################################################
#Author: Venetia Furtado
#ECEN 5613 - Spring 2024 - Prof. McClure
#University of Colorado Boulder
# 
#GNU makefile for SDCC base program
#Generates Intel Hex file for C files in this directory using SDCC
################################################################################


CC = sdcc	#Sets the compiler to SDCC
PACKTOOL = packihx
CFLAGS = --model-large --out-fmt-ihx -mmcs51 --opt-code-size --std-sdcc99 --verbose   # Compiler flags
LDFLAGS = --out-fmt-ihx --model-large -mmcs51 --opt-code-size --std-sdcc99 --verbose --code-loc 0x0000 --code-size 0x8000 --xram-loc 0x0000 --xram-size 0x8000	#Linker flags
SRC_DIR = src
BIN_DIR = bin
INCLUDE_DIR = inc
TARGET-IHX = main.ihx 				   # Output IHX File
TARGET-HEX = main.hex          		# Output HEX file


#Searches for all .c files in this directory 
SOURCES := $(wildcard $(SRC_DIR)/*.c)

#Creates a .rel file for all the .c files in directory
OBJECTS := $(patsubst $(SRC_DIR)/%.c, $(BIN_DIR)/%.rel, $(SOURCES))

#first command that make executes
all: $(BIN_DIR)/$(TARGET-HEX)

#Compiles object files (.rel) from .c files
$(BIN_DIR)/%.rel: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -I $(INCLUDE_DIR) -c $< -o $@

#Link all .rel files to create the .hex files
$(BIN_DIR)/$(TARGET-IHX):$(BIN_DIR)/$(OBJECTS)
	$(CC) $(LDFLAGS) $(BIN_DIR)/main.rel $(filter-out $(BIN_DIR)/main.rel, $(OBJECTS)) -o $@

#Generates Hex files for the ihx file
$(BIN_DIR)/$(TARGET-HEX):$(BIN_DIR)/$(TARGET-IHX)
	$(PACKTOOL) $< > $@


# Phony target for running the command clean
.PHONY: clean
clean:
	cd bin; rm -f *.asm *.rel *.lst *.rst *.hex *.mem *.map *.sym *.lnk *.lk *.ihx
