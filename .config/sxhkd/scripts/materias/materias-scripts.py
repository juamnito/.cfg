############################################

import os, sys

from lista_materias import materias

############################################

rofi = "rofi -dmenu -p \"Scripts de Materias\""

opciones = materias.keys()
opciones = "\n".join(opciones)

############################################

def main():
    global rofi, opciones

    materia = os.popen("echo -e \"" + opciones + "\" | " + rofi).read()[:-1]

    if materia == "" or not os.path.isdir(
            os.path.join(materias[materia], ".scripts")):
        return

    materia = os.path.join(materias[materia], ".scripts")

    opciones = os.listdir(materia)
    for o in opciones:
        if os.path.isfile(materia + o):
            print(o, "es archivo")
        elif os.path.isdir(materia + o):
            print(o, "es directorio")
            opciones.remove(o)       
        else:
            if o[-3:] != ".py":
                print(o[-3:])
                print(o, "es raro")
                opciones.remove(o)
    opciones = "\n".join(opciones)

    selec = os.popen("echo -e \"" + opciones + "\" | " + rofi).read()[:-1]
    if len(selec) == 0:
        return
    selec = os.path.join(materia, selec)

    os.system(
        "python " + selec
    )

if __name__ == "__main__":
    main()
