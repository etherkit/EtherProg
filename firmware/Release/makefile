################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include usbdrv/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
EtherProg.lss \

FLASH_IMAGE += \
EtherProg.hex \

EEPROM_IMAGE += \
EtherProg.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: EtherProg.elf secondary-outputs

# Tool invocations
EtherProg.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,EtherProg.map -mmcu=attiny45 -o "EtherProg.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

EtherProg.lss: EtherProg.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S EtherProg.elf  >"EtherProg.lss"
	@echo 'Finished building: $@'
	@echo ' '

EtherProg.hex: EtherProg.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -O ihex EtherProg.elf  "EtherProg.hex"
	@echo 'Finished building: $@'
	@echo ' '

EtherProg.eep: EtherProg.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex EtherProg.elf  "EtherProg.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: EtherProg.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=attiny45 EtherProg.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(ASM_DEPS)$(EEPROM_IMAGE)$(FLASH_IMAGE)$(ELFS)$(LSS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS) EtherProg.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
