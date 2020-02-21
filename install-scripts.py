#!/bin/python3

import os

os.system('mkdir $HOME/.scripts')

for file in os.listdir('scripts'):
    os.system(f'ln -i scripts/{file} $HOME/.scripts')

