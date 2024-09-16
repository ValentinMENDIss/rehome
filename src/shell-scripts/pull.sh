#!/bin/sh

# ReHome Shell Script (pull)
# Uploaded on Github: (ValentinMENDIss)

# Have Fun :)

##################


# declaration of variables
CONF_DIRPATH=~/.config/rehome.conf

# ADD PATHS OF PROGRAMS THAT YOU WANT TO COPY TO CONFIG FILE AND ADD IT TO INPUT FILES
FILE1=~/.config/bspwm/bspwmrc
FILE2=~/.config/sxhkd/sxhkdrc
INPUT_FILES=("$FILE1" "$FILE2")

# check if config file is created at startup
if [ ! -d $CONF_DIRPATH ]; then
        touch $CONF_DIRPATH
fi

# main code
> "$CONF_DIRPATH"                                                           # empty the rehome config file 
for file in "${INPUT_FILES[@]}"; do
        {
                echo "----- Start of $file -----"
                cat "$file"
                echo "----- End of $file -----"
        } >>"$CONF_DIRPATH"
done
        
echo "ReHome Configuration file was successfully generated"
