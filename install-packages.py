#!/bin/python3

import os

with open('packages.txt') as f:
	for line in f:
		if line != '\n':
			os.system(f'sudo apt -y install {line}') 
