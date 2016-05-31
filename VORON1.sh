#!/bin/bash
# Main config changes
sed -i '' \
 -e '\|#define STRING_CONFIG_H_AUTHOR|s|none, default config|codexmas VORON:1|' \
 -e 's|//#define CUSTOM_MACHINE_NAME "3D Printer"|#define CUSTOM_MACHINE_NAME "VORON:1"|' \
 -e 's|//#define PS_DEFAULT_OFF|#define PS_DEFAULT_OFF|' \
 -e 's|#define TEMP_SENSOR_0.*|#define TEMP_SENSOR_0 5|' \
 -e 's|#define TEMP_SENSOR_BED.*|#define TEMP_SENSOR_BED 1|' \
 -e '\|#define HEATER_0_MAXTEMP|s|275|295|' \
 -e '\|#define BED_MAXTEMP|s|150|142|' \
 -e '\|#define MAX_BED_POWER|s|255|190|' \
 -e 's|//#define COREXY|#define COREXY|' \
 -e '\|Z_MIN_ENDSTOP_INVERTING|s|false|true|' \
 -e '\|Z_MIN_PROBE_ENDSTOP_INVERTING|s|false|true|' \
 -e '\|INVERT_Y_DIR|s|true|false|' \
 -e '\|X_MAX_POS|s|200|228|' \
 -e '\|Y_MAX_POS|s|200|228|' \
 -e '\|Z_MAX_POS|s|200|228|' \
 -e 's|//#define AUTO_BED_LEVELING_FEATURE|#define AUTO_BED_LEVELING_FEATURE|' \
 -e 's|//#define DEBUG_LEVELING_FEATURE|#define DEBUG_LEVELING_FEATURE|' \
 -e '\|LEFT_PROBE_BED_POSITION|s|15|20|' \
 -e '\|RIGHT_PROBE_BED_POSITION|s|170|180|' \
 -e '\|FRONT_PROBE_BED_POSITION|s|20|20|' \
 -e '\|BACK_PROBE_BED_POSITION|s|170|180|' \
 -e '\|AUTO_BED_LEVELING_GRID_POINTS|s|2|3|' \
 -e '\|ABL_PROBE_PT_1_X|s|15|20|' \
 -e '\|ABL_PROBE_PT_1_Y|s|180|190|' \
 -e '\|ABL_PROBE_PT_2_X|s|15|20|' \
 -e '\|ABL_PROBE_PT_2_Y|s|20|20|' \
 -e '\|ABL_PROBE_PT_3_X|s|170|208|' \
 -e '\|ABL_PROBE_PT_3_Y|s|20|20|' \
 -e '\|X_PROBE_OFFSET_FROM_EXTRUDER|s|10|0|' \
 -e '\|Y_PROBE_OFFSET_FROM_EXTRUDER|s|10|-45|' \
 -e '\|Z_PROBE_OFFSET_FROM_EXTRUDER|s|10|0|' \
 -e '\|XY_TRAVEL_SPEED|s|8000|15000|' \
 -e '\|Z_RAISE_BEFORE_PROBING|s|15|2|' \
 -e '\|Z_RAISE_BETWEEN_PROBINGS|s|15|2|' \
 -e '\|Z_RAISE_AFTER_PROBING|s|15|5|' \
 -e 's|//#define FIX_MOUNTED_PROBE|#define FIX_MOUNTED_PROBE|' \
 -e 's|//#define Z_SAFE_HOMING|#define Z_SAFE_HOMING|' \
 -e 's|//#define EEPROM_SETTINGS|#define EEPROM_SETTINGS|' \
 -e 's|//#define SDSUPPORT|#define SDSUPPORT|' \
 -e 's|//#define REPRAP_DISCOUNT_SMART_CONTROLLER|#define REPRAP_DISCOUNT_SMART_CONTROLLER|' \
 ~/GIT/Marlin/Marlin/Configuration.h

 sed -i '' \
 -e '\|#define THERMAL_PROTECTION_HYSTERESIS|s|4|6|' \
 -e '\|#define THERMAL_PROTECTION_BED_HYSTERESIS|s|2|4|' \
 ~/GIT/Marlin/Marlin/Configuration_adv.h
