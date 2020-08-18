#!/bin/bash
# Main config changes
sed -i '' \
 -e '\|#define STRING_CONFIG_H_AUTHOR|s|none, default config|codexmas VORON1.004|' \
 -e 's|//#define CUSTOM_MACHINE_NAME "3D Printer"|#define CUSTOM_MACHINE_NAME "VORON1.004"|' \
 -e '\|DEFAULT_NOMINAL_FILAMENT_DIA|s|3.0|2.85|' \
 -e '\|#define POWER_SUPPLY|s|0|1|' \
 -e 's|//#define PS_DEFAULT_OFF|#define PS_DEFAULT_OFF|' \
 -e 's|#define TEMP_SENSOR_0.*|#define TEMP_SENSOR_0 5|' \
 -e 's|#define TEMP_SENSOR_BED.*|#define TEMP_SENSOR_BED 1|' \
 -e '\|#define TEMP_HYSTERESIS|s|3|8|' \
 -e '\|#define TEMP_BED_HYSTERESIS|s|3|8|' \
 -e '\|#define HEATER_0_MAXTEMP|s|275|300|' \
 -e '\|#define BED_MAXTEMP|s|150|115|' \
 -e '\|#define MAX_BED_POWER|s|255|190|' \
 -e 's|//#define COREXY|#define COREXY|' \
 -e 's|//#define ENDSTOPPULLUP_ZMIN|#define ENDSTOPPULLUP_ZMIN|' \
 -e 's|//#define BLTOUCH|#define BLTOUCH|' \
 -e '\|X_PROBE_OFFSET_FROM_EXTRUDER|s|10|0|' \
 -e '\|Y_PROBE_OFFSET_FROM_EXTRUDER|s|10|-42|' \
 -e '\|XY_PROBE_SPEED|s|8000|15000|' \
 -e '\|Z_CLEARANCE_DEPLOY_PROBE|s|10|5|' \
 -e '\|Z_CLEARANCE_BETWEEN_PROBES|s|5|2|' \
 -e '\|INVERT_Y_DIR|s|true|false|' \
 -e '\|#define X_BED_SIZE|s|200|228|' \
 -e '\|#define Y_BED_SIZE|s|200|228|' \
 -e '\|Z_MAX_POS|s|200|228|' \
 -e 's|//#define Z_SAFE_HOMING|#define Z_SAFE_HOMING|' \
 -e 's|//#define EEPROM_SETTINGS|#define EEPROM_SETTINGS|' \
 -e 's|//#define REPRAP_DISCOUNT_SMART_CONTROLLER|#define REPRAP_DISCOUNT_SMART_CONTROLLER|' \
 ~/GIT/Marlin/Marlin/Configuration.h

 sed -i '' \
 -e 's|//#define BABYSTEPPING|#define BABYSTEPPING|' \
 -e 's|//#define BABYSTEP_ZPROBE_OFFSET|#define BABYSTEP_ZPROBE_OFFSET|' \
 ~/GIT/Marlin/Marlin/Configuration_adv.h
