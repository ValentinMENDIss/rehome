#!/bin/sh

# ReHome Shell Script ( using gum from: https://github.com/charmbracelet/gum)
# Uploaded on Github: (ValentinMENDIss)

# Have Fun :)


##################

# declaration of variables
CONF_DIRPATH=~/.config/rehome.conf
DIRPATH=~/.config
OPTION=$(gum choose "push" "pull")

# ADD PATHS OF PROGRAMS THAT YOU WANT TO COPY TO CONFIG FILE AND ADD IT TO INPUT FILES
FILE1=~/.config/bspwm/bspwmrc
FILE2=~/.config/sxhkd/sxhkdrc
INPUT_FILES=("$FILE1" "$FILE2")

# check if config file is created at startup
if [ ! -d $CONF_DIRPATH ]; then
        touch $CONF_DIRPATH
fi



# main code
echo '{{ Color "99" "0" " ReHome (Home Declarator) " }}' | gum format -t template
echo $OPTION

if [ "$OPTION" == "push" ]; then
        echo -e "\npush function is under construction..."
elif [ "$OPTION" == "pull" ]; then
        echo -e "\npull function is under construction..."
        > "$CONF_DIRPATH"   # empty the rehome config file 
        for file in "${INPUT_FILES[@]}"; do
                {
                        echo "----- Start of $file -----"
                        cat "$file"
                        echo "----- End of $file -----"
                } >>"$CONF_DIRPATH"
        done
        
        echo "ReHome Configuration file was successfully generated"
        wc -l "$CONF_DIRPATH"
fi
