#!/bin/bash

# 1. Create a virtual environment named 'venv' if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

# 2. Activate the virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# 3. Upgrade pip to ensure smooth installation
echo "Upgrading pip..."
pip install --upgrade pip

# 4. Install the package in editable mode
echo "Installing package in editable mode..."
pip install -e .

echo "Setup complete. To work on the project, run: source venv/bin/activate"
