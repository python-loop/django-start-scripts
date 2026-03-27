#!/bin/bash

# Get required information
read -p "Virtual environment name: " VENV_NAME
read -p "Project Name: " PROJECT_NAME
read -p "App Name: " APP_NAME

# Create a venv
python -m venv "$VENV_NAME"

echo "Virtual environment created successfully"

# Activate it
source "$VENV_NAME/Scripts/activate"

echo "Installing django"
# Install Django
pip install django 

# startproject and an app
django-admin startproject "$PROJECT_NAME" . 

python manage.py startapp "$APP_NAME"

echo "Django project '$PROJECT_NAME' and app '$APP_NAME' created successfully in virtual environment '$VENV_NAME'."
