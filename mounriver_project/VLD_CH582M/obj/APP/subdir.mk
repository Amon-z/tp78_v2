################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/hidmouse.c \
../APP/main.c 

OBJS += \
./APP/hidmouse.o \
./APP/main.o 

C_DEPS += \
./APP/hidmouse.d \
./APP/main.d 


# Each subdirectory must supply rules for building sources it contributes
APP/%.o: ../APP/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DCLK_OSC32K=1 -I"E:\tp78_v2\mounriver_project\VLD_CH582M\Startup" -I"E:\tp78_v2\mounriver_project\VLD_CH582M\APP\include" -I"E:\tp78_v2\mounriver_project\VLD_CH582M\Profile\include" -I"E:\tp78_v2\mounriver_project\VLD_CH582M\StdPeriphDriver\inc" -I"E:\tp78_v2\mounriver_project\VLD_CH582M\HAL\include" -I"E:\tp78_v2\mounriver_project\VLD_CH582M\Ld" -I"E:\tp78_v2\mounriver_project\VLD_CH582M\LIB" -I"E:\tp78_v2\mounriver_project\VLD_CH582M\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

