/* ReHome - Home Manager for your Dotfiles (Inspired by NixOS)  */
/* Uploaded on Github: (ValentinMENDIss) */

/* Have fun with code and the application :) */

///////////////////////////////////////////////

/* import modules */
extern crate run_shell;
use run_shell::cmd;
use std::io;



/* main loop */
fn main() {
    println!("\nWelcome in ReHome - Home Manager for your Dotfiles");
    println!("What task do you want me to perform? (pull/push): ");

    let mut userinput = String::new();

    io::stdin()
        .read_line(&mut userinput)
        .expect("Failed to read user input");

    println!("For debugging: {}", userinput);


    let userinput = userinput.trim();   /* remove the trailing newline (character) from the input */

    /* run command by cmd! macro */
    if userinput == "push" {
        cmd!("./shell-scripts/push.sh").run().unwrap();
    }
    if userinput == "pull" {
        cmd!("./shell-scripts/pull.sh").run().unwrap();
    }
}
