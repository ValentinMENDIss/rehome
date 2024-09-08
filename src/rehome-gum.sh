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
echo '{{ Color "99" "0" " ReHome (Home Declarator) " }}' | gum format -t template   # print Title of the script
echo $OPTION                                                                        # print chosen option

# functions (push, pull)
if [ "$OPTION" == "push" ]; then                                                    
        current_file=""                                                             # declare new variable (current file that is being read)
        while IFS= read -r line; do
                if [[ "$line" =~ ^-----\ Start\ of\ (.*)\ -----$ ]]; then
                        current_file="${BASH_REMATCH[1]}" > "$current_file"
                elif [[ "$line" =~ ^-----\ End\ of\ (.*)\ -----$ ]]; then
                        current_file=""
                elif [[ -n "$current_file" ]]; then
                        echo "$line" >> "$current_file"
                fi
        done < "$CONF_DIRPATH"                                                      # giving input source (take configs from rehome config file)

elif [ "$OPTION" == "pull" ]; then
        > "$CONF_DIRPATH"                                                           # empty the rehome config file 
        for file in "${INPUT_FILES[@]}"; do
                {
                        echo "----- Start of $file -----"
                        cat "$file"
                        echo "----- End of $file -----"
                } >>"$CONF_DIRPATH"
        done
        
        echo "ReHome Configuration file was successfully generated"
        wc -l "$CONF_DIRPATH"                                                       # print the number of lines that config contains to the screen
fi
