############################################

import os, sys

from lista_materias import materias

############################################

rofi = "rofi -dmenu -p \"Materias\""

opciones = materias.keys()
opciones = "\n".join(opciones)

############################################

def main():
    global rofi, opciones

    materia = os.popen("echo -e \"" + opciones + "\" | " + rofi).read()[:-1]

    if materia == "":
        return
    materia = materias[materia]

    opciones = os.listdir(materia)
    for o in opciones:
        if os.path.isfile(materia + o):
            print(o, "es archivo")
            opciones.remove(o)       
        elif os.path.isdir(materia + o):
            print(o, "es directorio")
        else:
            if o[0] == ".":
                print(o, "es raro")
                opciones.remove(o)
    opciones = "\n".join(opciones)

    selec = os.popen("echo -e \"./\n../\n" + opciones + "\" | " + rofi).read()[:-1]
    if len(selec) == 0:
        return
    selec = os.path.join(materia, selec)

    os.system(
        "alacritty -e ranger " + selec
    )

if __name__ == "__main__":
    main()
