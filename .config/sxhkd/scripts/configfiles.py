import os

# List of the configuration files and their location
files = {
        # Window managers
    "  bspwm": ("~/.config/bspwm/","bspwmrc"),
    "  qtile": ("~/.config/qtile/","config.py"),
    "  sxhkd": ("~/.config/sxhkd/","sxhkdrc"),
        # Status bar
    "   polybar": ("~/.config/polybar/","config.ini"),
        # Text editors
    "  vim": ("~/.vim/","vimrc"),
    "  nvim": ("~/.config/nvim/","init.vim"),
        # Command termnials
    "  zsh": ("~/",".zshrc"),
    "  alacritty": ("~/.config/alacritty/","alacritty.yml"),
        # launchers
    "   dmenu": ("~/.tools/dmenu-5.0","config.def.h"),
    "   rofi": ("~/.config/rofi","config.raisi"),
        # file managers
    "  ranger-rc.conf": ("~/.config/ranger/","rc.conf"),
    "  ranger-rifle.conf": ("~/.config/ranger/","rifle.conf"),
        # Pdf viewers
    "  zathura": ("~/.config/zathura/","zathurarc"),
        # Latex Scripts
    "   T-scripts/Scripts": ("~/T-scripts/Scripts",""),
    "   T-scripts/Ejemplos": ("~/T-scripts/Ejemplos",""),
        # system
    "   gtk-3.0": ("~/.config/gtk-3.0/","settings.ini"),
}

rofi = "rofi -dmenu -p \"Config files\""

def main():
    global files
    opciones = "\n".join(files.keys())

    # Command to call dmenu in a fancy way
    # dmenu = "dmenu -fn 'Terminus-10' -nb '#1F1F36'"

    # Showing the options in the dmenu interface
    archivo = os.popen("echo -e \"" + opciones + "\" | " + rofi).read()[:-1]

    # Executing the option selected opening the desired file with vim
    os.system(
        "alacritty -e ranger " + files[archivo][0] 
    ) 

if __name__ == '__main__':
    main()
