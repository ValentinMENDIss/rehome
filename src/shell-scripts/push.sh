#!/bin/sh

# ReHome Shell Script (push)
# Uploaded on Github: (ValentinMENDIss)

# Have Fun :)

##################


# declaration of variable(s)
CONF_DIRPATH=~/.config/rehome.conf

# main code
current_file=""                                                             # declare new variable (current file that is being read)
while IFS= read -r line; do
        if [[ "$line" =~ ^-----\ Start\ of\ (.*)\ -----$ ]]; then
                current_file="${BASH_REMATCH[1]}" > "$current_file"
        elif [[ "$line" =~ ^-----\ End\ of\ (.*)\ -----$ ]]; then
                chmod +x $current_file
                current_file=""
        elif [[ -n "$current_file" ]]; then
                echo "$line" >> "$current_file"
        fi
done < "$CONF_DIRPATH"
