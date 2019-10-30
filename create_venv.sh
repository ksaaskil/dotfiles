#!/usr/bin/env bash

VENV_NAME=$1
PYTHON_VERSION=3.6.2

if [ -z ${VENV_NAME} ];
then
    echo "Usage: ./create_venv.sh VENV_NAME"
    exit 1
fi
echo "Creating virtualenv ${VENV_NAME}"
pyenv virtualenv ${PYTHON_VERSION} ${VENV_NAME}
echo "Setting local pyenv"
pyenv local ${VENV_NAME}
echo "Installing packages..."
pip install --upgrade pip
pip install pylint autopep8 jupyter ipykernel matplotlib
echo "Installing ipykernel ${VENV_NAME}..."
python -m ipykernel install --name ${VENV_NAME}
echo "Done."
