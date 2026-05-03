#!/bin/bash

set -e

# Start venv

function activate_venv() {

  echo "Virtual environment getting enabled.Please wait.....!"
  source .venv/bin/activate
  
  echo "Virtual environment has been enabled."


}

function deactivate_env() {

  echo "Virtual environment getting disabled. Please wait ....!
  deactivate
  
  echo "Virtual environment deactivated successfully"


}



