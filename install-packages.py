#!/bin/python3

import os, sys

for file in sys.argv[1:]:
    with open(f'{file}') as f:
            for line in f:
                    if line != '\n':
                            os.system(f'sudo apt -y install {line}') 

