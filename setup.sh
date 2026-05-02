#!/bin/bash
set -e

echo ">>> Creating virtual environment with Python 3.12..."
python3.12 -m venv .venv
source .venv/bin/activate

echo ">>> Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo ">>> Copying profiles.yml to ~/.dbt/..."
mkdir -p ~/.dbt
cp profiles.yml ~/.dbt/profiles.yml

echo ">>> Running dbt debug..."
cd data_fun
dbt debug

echo ""
echo "All done! To activate your environment next time run:"
echo "  source .venv/bin/activate"
