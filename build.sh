#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
python3 -m venv ve
source ve/bin/activate
python -m pip install "pelican[markdown]"
pushd retrosynth
pelican -s pelicanconf.py -o output content
#pelican -s pelicanconf.py -o output -t theme content
