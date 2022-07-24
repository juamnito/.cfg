#!/bin/python

import os


curr_dir = os.path.join(
    os.path.expanduser("~"), 
    "Documentos/licenciatura/materias"
)
os.chdir(
    curr_dir
)

materias = os.listdir()

materias =  {
    mat: os.path.join(curr_dir, mat)
    for mat in materias
}
