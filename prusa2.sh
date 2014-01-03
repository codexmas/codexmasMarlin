#!/bin/bash
# Main config changes
sed -i '' \
 -e '\|#define BAUDRATE|s|250000|115200|' \
 -e '\|#define STRING_CONFIG_H_AUTHOR|s|none, default config|codexmas: Prusa2 Yellow|' \
 -e '\|#define MOTHERBOARD|s|7|33|' \
 -e 's|#define TEMP_SENSOR_0.*|#define TEMP_SENSOR_0 1|' \
 -e 's|#define TEMP_SENSOR_BED.*|#define TEMP_SENSOR_BED 1|' \
 -e '\|Z_MIN_ENDSTOP_INVERTING|s|true|false|' \
 -e '\|Z_MAX_POS|s|200|150|' \
 -e 's|// #define CUSTOM_MENDEL_NAME.*|#define CUSTOM_MENDEL_NAME "Prusa2 Yellow"|' \
 -e 's|//#define EEPROM_SETTINGS|#define EEPROM_SETTINGS|' \
 -e 's|//#define REPRAP_DISCOUNT_SMART_CONTROLLER|#define REPRAP_DISCOUNT_SMART_CONTROLLER|' \
 -e 's|//#define NUM_SERVOS.*|#define NUM_SERVOS 3|' \
 -e 's|//#define SERVO_ENDSTOPS.*|#define SERVO_ENDSTOPS {-1, -1, 0}|' \
 -e 's|//#define SERVO_ENDSTOP_ANGLES.*|#define SERVO_ENDSTOP_ANGLES {0,0, 0,0, 70,0}|' \
 ~/GIT/Marlin/Marlin/Configuration.h

# -e 's|//#define ENABLE_AUTO_BED_LEVELING|#define ENABLE_AUTO_BED_LEVELING|' \
# -e 's|X_PROBE_OFFSET_FROM_EXTRUDER|s|-25|20|' \
# -e 's|Y_PROBE_OFFSET_FROM_EXTRUDER|s|-29|-10|' \
# -e 's|Z_PROBE_OFFSET_FROM_EXTRUDER|s|-12.35|-0.8|' \
# -e 's|//#define DISABLE_MAX_ENDSTOPS.*|#define DISABLE_MAX_ENDSTOPS|' \

# Disable Beeper on Display
sed -i '' -e '\|#define BEEPER 37|s|37|-1|' \
 ~/GIT/Marlin/Marlin/pins.h