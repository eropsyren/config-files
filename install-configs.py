#!/bin/python3

import os

for f in os.listdir('configs'):
	path = []

	for elem in f.split('-'):
		if elem == 'home':
			path.append('$HOME')
		else:
			path.append(elem)

	output  = '/'.join(path)
	os.system(f'ln -i configs/{f} {output}')
