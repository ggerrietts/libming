#!/bin/bash
cd $(dirname "$0")
sh autogen.sh
sh ./configure --enable-python
make install
ldconfig
cd py_ext
python setup.py install
