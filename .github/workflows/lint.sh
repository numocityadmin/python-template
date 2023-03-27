#!/bin/bash
set -e

# stop the build if there are Python syntax errors or undefined names
flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
# exit-zero treats all errors as warnings.
flake8 . --count --max-complexity=3 --max-line-length=80 --ignore=E111,E121,E126 --statistics
