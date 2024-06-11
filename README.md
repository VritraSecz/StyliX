# StyliX

## Introduction

StyliX is designed to enhance your shell experience by enabling advanced features and providing convenient shortcut commands. It allows you to customize your Termux environment, enabling various useful options and defining shortcuts for common actions.

## Overview

The script enables the following advanced shell features:

- **autocd**: Automatically change to a directory when only its name is entered.
- **globstar**: Enable recursive globbing for pattern matching.
- **histappend**: Append history instead of overwriting it.
- **extglob**: Enable extended pattern matching.
- **nocaseglob**: Enable case-insensitive globbing.
- **cdspell**: Enable autocorrect for the `cd` command to correct spelling errors in directory names.

Additionally, the script defines the following shortcut commands for quick access to frequently used actions:

| Command | Action                            |
|---------|-----------------------------------|
| ls      | ls --color=auto                   |
| ll      | ls -l                             |
| l       | ls -CF                            |
| la      | ls -a                             |
| ..      | cd ..                             |
| cls     | clear                             |
| h       | history                           |
| p       | pwd                               |
| update  | apt update -y && apt upgrade -y   |
| instax  | apt install                       |
## Screenshot

![photo](https://i.ibb.co/gvbT8Xw/Screenshot-2023-06-16-21-20-33-828-edit-com-termux.jpg)

## Installation

- `apt update -y`
- `apt upgrade -y`
- `apt install git -y`
- `git clone https://github.com/VritraSecz/StyliX.git`
- `cd StyliX`
- `bash install.sh`
>> Now It will take just few seconds and then, it will ask you to set username and password. after entering username and password confirm it by ` y ` and done. StyliX is applied in your termux.

> Now just reopen your termux to see new look with login screen.

+ Feel free to customize the script to suit your specific needs by adding or modifying shortcut commands and enabling additional features.

+ Enjoy your enhanced Termux shell experience with advanced features and convenient shortcut commands!
