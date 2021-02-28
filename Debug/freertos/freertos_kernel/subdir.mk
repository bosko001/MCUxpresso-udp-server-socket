################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freertos/freertos_kernel/croutine.c \
../freertos/freertos_kernel/event_groups.c \
../freertos/freertos_kernel/list.c \
../freertos/freertos_kernel/queue.c \
../freertos/freertos_kernel/stream_buffer.c \
../freertos/freertos_kernel/tasks.c \
../freertos/freertos_kernel/timers.c 

OBJS += \
./freertos/freertos_kernel/croutine.o \
./freertos/freertos_kernel/event_groups.o \
./freertos/freertos_kernel/list.o \
./freertos/freertos_kernel/queue.o \
./freertos/freertos_kernel/stream_buffer.o \
./freertos/freertos_kernel/tasks.o \
./freertos/freertos_kernel/timers.o 

C_DEPS += \
./freertos/freertos_kernel/croutine.d \
./freertos/freertos_kernel/event_groups.d \
./freertos/freertos_kernel/list.d \
./freertos/freertos_kernel/queue.d \
./freertos/freertos_kernel/stream_buffer.d \
./freertos/freertos_kernel/tasks.d \
./freertos/freertos_kernel/timers.d 


# Each subdirectory must supply rules for building sources it contributes
freertos/freertos_kernel/%.o: ../freertos/freertos_kernel/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFRDM_K64F -DFREEDOM -DSERIAL_PORT_TYPE_UART=1 -DFSL_RTOS_FREE_RTOS -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\board" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\source" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\mdio" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\phy" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\lwip\contrib\apps\udpecho" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\lwip\port" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\lwip\src" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\lwip\src\include" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\drivers" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\utilities" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\device" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\component\uart" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\component\serial_manager" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\component\lists" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\CMSIS" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\freertos\freertos_kernel\include" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\udp-server-socket\freertos\freertos_kernel\portable\GCC\ARM_CM4F" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\mdio" -I"${workspace_loc:/dnet/lwip/template{MacroEnd}" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\freertos\freertos_kernel\include" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\mmcau" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\device" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\mbedtls\include" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\CMSIS" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\source" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\utilities" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\lwip\src\include" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\lwip\port" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\phy" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\CMSIS_driver" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\board" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\drivers" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\accel" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\component\i2c" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\component\lists" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\component\osa" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\component\serial_manager" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\component\uart" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\drivers\freertos" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\lcd" -I"C:\Users\Bosko Lekovic\Documents\MCUXpressoIDE_11.3.0_5222\workspace\dnet\lwip\template" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


