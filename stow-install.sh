#!/bin/bash

set -e

# Check if running as root
if [[ $EUID -ne 0 ]]; then
   echo "Run with sudo"
   exit 1
fi

echo "Installing packages from $(pwd)"

stow */

echo "Done!"
