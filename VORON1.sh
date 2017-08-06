#!/bin/bash
# Main config changes
sed -i '' \
 -e '\|#define STRING_CONFIG_H_AUTHOR|s|none, default config|codexmas VORON#4|' \
 -e 's|//#define CUSTOM_MACHINE_NAME "3D Printer"|#define CUSTOM_MACHINE_NAME "VORON#4"|' \
 -e '\|#define POWER_SUPPLY|s|0|1|' \
 -e 's|//#define PS_DEFAULT_OFF|#define PS_DEFAULT_OFF|' \
 -e 's|#define TEMP_SENSOR_0.*|#define TEMP_SENSOR_0 5|' \
 -e 's|#define TEMP_SENSOR_BED.*|#define TEMP_SENSOR_BED 1|' \
 -e '\|#define HEATER_0_MAXTEMP|s|275|305|' \
 -e '\|#define BED_MAXTEMP|s|150|143|' \
 -e '\|#define MAX_BED_POWER|s|255|190|' \
 -e 's|//#define COREXY|#define COREXY|' \
 -e 's|//#define ENDSTOPPULLUP_ZMIN|#define ENDSTOPPULLUP_ZMIN|' \
 -e '\|INVERT_Y_DIR|s|true|false|' \
 -e '\|X_MAX_POS|s|200|228|' \
 -e '\|Y_MAX_POS|s|200|228|' \
 -e '\|Z_MAX_POS|s|200|228|' \
 -e 's|//#define BLTOUCH|#define BLTOUCH|' \
 -e '\|X_PROBE_OFFSET_FROM_EXTRUDER|s|10|0|' \
 -e '\|Y_PROBE_OFFSET_FROM_EXTRUDER|s|10|-42|' \
 -e '\|Z_PROBE_OFFSET_FROM_EXTRUDER|s|10|0|' \
 -e '\|XY_PROBE_SPEED|s|8000|15000|' \
 -e '\|Z_CLEARANCE_DEPLOY_PROBE|s|10|5|' \
 -e '\|Z_CLEARANCE_BETWEEN_PROBES|s|5|2|' \
 -e 's|//#define AUTO_BED_LEVELING_UBL|#define AUTO_BED_LEVELING_UBL|' \
 -e '\|#define UBL_MESH_INSET|s|1|4|' \
 -e 's|//#define Z_SAFE_HOMING|#define Z_SAFE_HOMING|' \
 -e 's|//#define EEPROM_SETTINGS|#define EEPROM_SETTINGS|' \
 -e 's|//#define SDSUPPORT|#define SDSUPPORT|' \
 -e 's|//#define REPRAP_DISCOUNT_SMART_CONTROLLER|#define REPRAP_DISCOUNT_SMART_CONTROLLER|' \
 ~/GIT/Marlin/Marlin/Configuration.h

 sed -i '' \
 -e 's|#define UBL_MESH_MIN_X (X_MIN_POS + UBL_MESH_INSET)|#define\UBL_MESH_MIN_X (X_MIN_POS + 6 + UBL_MESH_INSET)|' \
 -e 's|#define UBL_MESH_MIN_Y (Y_MIN_POS + UBL_MESH_INSET)|#define UBL_MESH_MIN_Y (Y_MIN_POS + 45 + UBL_MESH_INSET)|' \
 -e '\|#define THERMAL_PROTECTION_HYSTERESIS|s|4|10|' \
 -e '\|#define THERMAL_PROTECTION_BED_HYSTERESIS|s|2|6|' \
 ~/GIT/Marlin/Marlin/Configuration_adv.h
