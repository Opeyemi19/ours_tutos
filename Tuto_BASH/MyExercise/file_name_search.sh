#!/bin/bash

# 1ère methode
ls *.php *.sh

# 2ème méthode
shopt -s extglob
ls *.@(php|sh)

# 3ème methode
ls | grep -E '(.php|.sh)$'
