#!/bin/bash
# Main config changes
sed -i '' \
 -e '\|#define STRING_CONFIG_H_AUTHOR|s|none, default config|codexmas VORON:1|' \
 -e '\|#define BAUDRATE|s|250000|115200|' \
 -e 's|//#define CUSTOM_MACHINE_NAME "3D Printer"|#define CUSTOM_MACHINE_NAME "VORON:1"|' \
 -e 's|#define TEMP_SENSOR_0.*|#define TEMP_SENSOR_0 1|' \
 -e 's|#define TEMP_SENSOR_BED.*|#define TEMP_SENSOR_BED 1|' \
 -e 's|//#define COREXY|#define COREXY|' \
 -e '\|Z_MIN_PROBE_ENDSTOP_INVERTING|s|false|true|' \
 -e '\|INVERT_X_DIR|s|false|true|' \
 -e '\|INVERT_Z_DIR|s|false|true|' \
 -e '\|X_MAX_POS|s|200|228|' \
 -e '\|Y_MAX_POS|s|200|228|' \
 -e '\|Z_MAX_POS|s|200|228|' \
 -e 's|//#define AUTO_BED_LEVELING_FEATURE|#define AUTO_BED_LEVELING_FEATURE|' \
 -e 's|//#define DEBUG_LEVELING_FEATURE|#define DEBUG_LEVELING_FEATURE|' \
 -e '\|LEFT_PROBE_BED_POSITION|s|15|40|' \
 -e '\|RIGHT_PROBE_BED_POSITION|s|170|188|' \
 -e '\|FRONT_PROBE_BED_POSITION|s|20|40|' \
 -e '\|AUTO_BED_LEVELING_GRID_POINTS|s|2|3|' \
 -e '\|ABL_PROBE_PT_1_X|s|15|20|' \
 -e '\|ABL_PROBE_PT_1_Y|s|180|190|' \
 -e '\|ABL_PROBE_PT_2_X|s|15|20|' \
 -e '\|ABL_PROBE_PT_2_Y|s|20|20|' \
 -e '\|ABL_PROBE_PT_3_X|s|170|208|' \
 -e '\|ABL_PROBE_PT_3_Y|s|20|20|' \
 -e '\|X_PROBE_OFFSET_FROM_EXTRUDER|s|10|20|' \
 -e '\|Y_PROBE_OFFSET_FROM_EXTRUDER|s|10|20|' \
 -e '\|Z_RAISE_BEFORE_PROBING|s|15|10|' \
 -e '\|Z_RAISE_AFTER_PROBING|s|15|10|' \
 -e 's|//#define FIX_MOUNTED_PROBE|#define FIX_MOUNTED_PROBE|' \
 -e 's|//#define EEPROM_SETTINGS|#define EEPROM_SETTINGS|' \
 -e 's|//#define SDSUPPORT|#define SDSUPPORT|' \
 -e 's|//#define REPRAP_DISCOUNT_SMART_CONTROLLER|#define REPRAP_DISCOUNT_SMART_CONTROLLER|' \
 ~/GIT/Marlin/Marlin/Configuration.h