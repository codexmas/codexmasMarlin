#!/bin/bash
# Main config changes
sed -i '' \
 -e '\|#define STRING_CONFIG_H_AUTHOR|s|none, default config|codexmas VORON#4|' \
 -e 's|//#define CUSTOM_MACHINE_NAME "3D Printer"|#define CUSTOM_MACHINE_NAME "VORON#4"|' \
 -e '\|DEFAULT_NOMINAL_FILAMENT_DIA|s|3.0|2.85|' \
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
 -e '\|#define X_BED_SIZE|s|200|228|' \
 -e '\|#define Y_BED_SIZE|s|200|228|' \
 -e '\|X_PROBE_OFFSET_FROM_EXTRUDER|s|10|0|' \
 -e '\|Y_PROBE_OFFSET_FROM_EXTRUDER|s|10|-42|' \
 -e '\|Z_PROBE_OFFSET_FROM_EXTRUDER|s|10|0|' \
 -e '\|XY_PROBE_SPEED|s|8000|15000|' \
 -e '\|Z_CLEARANCE_DEPLOY_PROBE|s|10|5|' \
 -e '\|Z_CLEARANCE_BETWEEN_PROBES|s|5|2|' \
 -e 's|//#define AUTO_BED_LEVELING_UBL|#define AUTO_BED_LEVELING_UBL|' \
 -e 's|#define MESH_INSET 1              // Mesh inset margin on print area|#define MESH_INSET 10|' \
 -e '\|#define GRID_MAX_POINTS_X|s|10|8|' \
 -e '\|#define UBL_PROBE_PT_1_X|s|39|114|' \
 -e '\|#define UBL_PROBE_PT_1_Y|s|180|50|' \
 -e '\|#define UBL_PROBE_PT_2_X|s|39|50|' \
 -e '\|#define UBL_PROBE_PT_2_Y|s|20|180|' \
 -e '\|#define UBL_PROBE_PT_3_X|s|180|200|' \
 -e '\|#define UBL_PROBE_PT_3_Y|s|20|180|' \
 -e 's|//#define Z_SAFE_HOMING|#define Z_SAFE_HOMING|' \
 -e 's|//#define EEPROM_SETTINGS|#define EEPROM_SETTINGS|' \
 -e 's|//#define SDSUPPORT|#define SDSUPPORT|' \
 -e 's|//#define REPRAP_DISCOUNT_SMART_CONTROLLER|#define REPRAP_DISCOUNT_SMART_CONTROLLER|' \
 ~/GIT/Marlin/Marlin/Configuration.h

 sed -i '' \
 -e '\|#define THERMAL_PROTECTION_HYSTERESIS|s|4|10|' \
 -e '\|#define THERMAL_PROTECTION_BED_HYSTERESIS|s|2|6|' \
 ~/GIT/Marlin/Marlin/Configuration_adv.h
