import os

# List of the configuration files and their location
files = {
        # Window managers
    "bspwm": ("~/.config/bspwm/", ""),
    "qtile": ("~/.config/qtile/", ""),
    "sxhkd": ("~/.config/sxhkd/",""),
        # Status bar
    "polybar": ("~/.config/polybar/", " "),
        # Text editors
    "nvim": ("~/.config/nvim/",""),
        # Command termnials
    "zsh": ("~/",""),
    "alacritty": ("~/.config/alacritty/",""),
        # launchers
    "dmenu": ("~/.tools/dmenu-5.0"," "),
    "rofi": ("~/.config/rofi"," "),
        # file managers
    "ranger": ("~/.config/ranger/",""),
        # Pdf viewers
    "zathura": ("~/.config/zathura/",""),
        # Latex Scripts
    "fstx": ("~/.tools/fstx"," "),
        # system
    "gtk-3.0": ("~/.config/gtk-3.0/", " "),
}

rofi = "rofi -dmenu -p \"Config files\""

def options(files):
    return [ " " + files[f][1] + " " + f for f in files  ] 

def main():
    global files
    opciones = "\n".join(options(files))

    # Command to call dmenu in a fancy way
    # dmenu = "dmenu -fn 'Terminus-10' -nb '#1F1F36'"

    # Showing the options in the dmenu interface
    archivo = os.popen("echo -e \"" + opciones + "\" | " + rofi).read()[3:-1]
    print(archivo)

    # Executing the option selected opening the desired file with vim
    os.system(
        "alacritty -e ranger " + files[archivo][0] 
    ) 

if __name__ == '__main__':
    main()
