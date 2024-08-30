#include <stdio.h>
#include <string.h>

#define CONFIG_FILE "rehome.cfg"

int main() {
    
    FILE *fp = NULL;

    char option[256];

    fp = fopen(CONFIG_FILE ,"a");

    if (fp != NULL) {
        printf("What should I do?    ( Choose one option ) \n");
        printf("push / pull: ");
        scanf("%s", option);
        printf("Option has been chosen...\n");
        printf("Option: %s \n", option);
        
        if (strcmp(option, "pull") == 0) {
                printf("It is working...");
         }
        else {
                printf(" :( sad...:%s ", option);
        }
    }

    return 0;
}
