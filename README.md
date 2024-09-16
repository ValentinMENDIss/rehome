# ReHome - Home Manager for your Dotfiles (Inspired by NixOS)

ReHome - is a CLI-Tool written in rust and shell, which can copy ("pull") and paste ("push") your config files/dotfiles from the system.

### How does it work?

ReHome CLI-Tool creates a new config file/text file where it stores every configuration of specific files you want or need.
This might be config files for basic applications like (btop, neofetch, etc...). But also this can be WM's (and packages that are needed for them) config files.
Such as (bspwm, sxhkd, polybar, rofi, etc...).

### Status of the tool

To get you know about the project, we will write the current status of the tool right here. Yeah right here :)

**IN DEVELOPMENT (BETA-RELEASE)**

# Basic Installation Guide

### Make sure you have Rust installed
To install this shell script you will need to install rust if you don't have it.
After it everything is ready to work on any UNIX-like Operating System.

To check if rust is installed on your system run:

```sh
rustc --version
```

if you no version of rustc is printed out, see original documentation on rust website to install it.

### Build and Run
Now you are almost there. What you will need is only to build an application and run it on your system.

To build an application go to the directory of rehome and run following:

```sh
cargo build
```

Now just run the application in the directory of rehome with:

```sh
cargo run
```

Now everythin should run and work properly :).
If you have any problems that you encounter while installing, running or using rehome please submit it on Issues page.

## LICENSES

### Project's License
These project is licensed under the GNU General Public License v 3.0
(GPL-3.0)

### Important Information

To read more about LICENSE information open the LICENSE file.


The freedom of this shell script/tool lies in your hands. Use it, modify it, and distribute it as you wish :). This project is licensed under the GPL-3.0.

