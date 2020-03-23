#!/bin/python3

import os

for f in os.listdir('configs'):
    path = []

    for elem in f.split('-'):
            if elem == 'home':
                    path.append('$HOME')
            else:
                    path.append(elem)

    dir_path = '/'.join(path[:len(path)-1])
    os.system(f'mkdir -p {dir_path}')

    file_path  = '/'.join(path)
    os.system(f'ln -s -i configs/{f} {file_path}')
