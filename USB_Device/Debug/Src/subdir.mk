################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/main.c \
../Src/system_init.c \
../Src/usbd_driver.c \
../Src/usbd_framework.c 

OBJS += \
./Src/main.o \
./Src/system_init.o \
./Src/usbd_driver.o \
./Src/usbd_framework.o 

C_DEPS += \
./Src/main.d \
./Src/system_init.d \
./Src/usbd_driver.d \
./Src/usbd_framework.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DSTM32F407xx -c -I../Inc -I"E:/ST/dev/USB_Guide/USB_Device/Inc/CMSIS/Device/ST/STM32F4xx/Include" -I"E:/ST/dev/USB_Guide/USB_Device/Inc/CMSIS/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/system_init.cyclo ./Src/system_init.d ./Src/system_init.o ./Src/system_init.su ./Src/usbd_driver.cyclo ./Src/usbd_driver.d ./Src/usbd_driver.o ./Src/usbd_driver.su ./Src/usbd_framework.cyclo ./Src/usbd_framework.d ./Src/usbd_framework.o ./Src/usbd_framework.su

.PHONY: clean-Src

