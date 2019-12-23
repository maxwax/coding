# coding

Coding is a personal script used to launch instances of gnome-terminal in pre-defined sizes and display positions.

Coding is combined with the Gnome 3 method of launching apps via the 'Super' key and .desktop configuration files to call coding.

When properly deployed, a user can tap the Super key, type a keyword such as 'west' and coding will follow a 'west' rule in a configuration file to launch a gnome-terminal instance of 80x25 in the lower left part of a multi-monitor display.

Using this combination of Gnome 3 and coding, the user can quickly launch windows and avoid mouse interactions.

![Screen positions Diagram](https://github.com/maxwax/coding/coding.png)

## Requirements

This script uses the gnome-terminal parameter '--geometry' to specify a terminal size in rows and columns as well as an X, Y position where the terminal should appear on the desktop.

Launching a terminal of a specific size is available in the X-Windows and Wayland display servers, but gnome-terminal has lost the ability to _position_ windows in Wayland.

I continue to run my Linux systems in X-Windows in order to keep the ability to position windows with 'coding'.


## Installation

The following components must be deployed for all of this to work:

* The coding script, usually at /usr/local/bin/coding

* A configuration file with rules in the user's home directory at $HOME/.coding-config

* Gnome .desktop files that allow the user to press the Super key, type the name of a launcher (such as right, left, east, west) and have the launcher call 'coding' with the named position as a parameter

This installation method should work:

1. Clone this git repo
2. Install the components provided
```sudo ./coding-install.sh```
3. Copy 'coding-config' to $HOME/.coding-config and edit rules
4. Try it!  At a terminal, type 'coding right' and see if it launches. Try additional named positiones and adjust the rule file as needed.

## Issues

My normal process to adjust positioning rules is to manually size and position a terminal, then use the 'xwininfo' command line program to reveal the details of its size and position.  I'd then drop the row x column size and X, Y position information into a rule and use 'coding' to launch that terminal.

Recently I've found 'xwininfo' values to conflict with what I actually see on screen.  It's reporting the absolute Y position of a window as being on display row 1226 although my physical mointor only has 1200 rows of pixels.

So I use 'xwininfo' as a guide and experiment with values until they perform the right positioning action.
