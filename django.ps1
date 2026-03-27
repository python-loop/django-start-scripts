#Get required information
$VenvName = Read-Host -Prompt "Virtual enviroment name:"
$ProjectName = Read-Host -Prompt "Project Name:"
$AppName = Read-Host -Prompt "App Name:"  

#Create a venv
python -m venv $VenvName

Write-Output "Virtual environment created successfully"

#Activate it
& "$VenvName\Scripts\Activate.ps1"

Write-Output "Installing django"
#Install Django
pip install django 

#startproject and an app
django-admin startproject $ProjectName . 

python manage.py startapp $AppName


