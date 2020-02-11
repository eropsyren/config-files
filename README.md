# This repository is used to install and configure my debian installation

* `packages.txt` contains a list of all necessary packages
* `install-packages.py` is a script that reads `packages.txt` and installs each
  package
* the `configs` folder contains all needed config files
* the file name must have the `path-to-file` format
* if `home` is specified in the `path-to-file` format, it will be replaced with
  `$HOME`
* `install-configs.py` will create a symbolic link between each config file
  inside the `configs` folder and the specified `path-to-file`
