# moonlight-conky-theme
A theme for conky, compatible with Arch Linux

![conkytheme](https://user-images.githubusercontent.com/43212316/157928006-783cb422-4532-4a3b-8052-37e71bf05214.png)

## How to use

1. Clone the repo
2. Have Iosevka downloaded and available as a system font (available for free here: https://archlinux.org/packages/community/any/ttc-iosevka/)
3. Replace the \_name variable in main.lua with your name
4. Replace the \<HOME_DIR\> and \<WIFI\> variables in conky.conf with your home directory and wifi device name respectively
  
## What I've learned

Basic knowledge of the Lua programming language
  
## To do
  
 - Interpolate the home directory and wifi device variables with the fs library rather than relying on user input
 - Clean up redundant code
