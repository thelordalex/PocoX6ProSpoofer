#!/system/bin/sh

# Module variables
MODPATH_SYSTEM_PROP="$MODPATH"/system.prop
MOD_PROP_MODEL=$(grep_prop ro.product.model "$MODPATH_SYSTEM_PROP")
MOD_PROP_PRODUCT=$(grep_prop ro.build.product "$MODPATH_SYSTEM_PROP" | tr '[:lower:]' '[:upper:]')
MOD_PROP_VERSION=$(grep_prop ro.build.version.release "$MODPATH_SYSTEM_PROP")
MOD_PROP_SECURITYPATCH=$(grep_prop ro.build.version.security_patch "$MODPATH_SYSTEM_PROP")
MOD_PROP_VERSIONCODE=$(date -d "$MOD_PROP_SECURITYPATCH" '+%y%m%d')
MOD_PROP_MONTH=$(date -d "$MOD_PROP_SECURITYPATCH" '+%B')
MOD_PROP_YEAR=$(date -d "$MOD_PROP_SECURITYPATCH" '+%Y')

# Print head message
ui_print "- Installing, $MOD_PROP_MODEL ($MOD_PROP_PRODUCT) Prop - $MOD_PROP_MONTH $MOD_PROP_YEAR"

# Print footer message
ui_print "- Script by @AlexModules, Instagram: @ussefayman_ | Telegram: @uusergram"