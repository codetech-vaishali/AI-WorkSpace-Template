#!bin/bash

echo "==========================="
echo "AI Workspace Setup starting"
echo "==========================="

#check  python
if ! command -v  python3 &> /dev/null
then 
    echo "python is not install"
    exit 1
fi

echo "Python Found:"
python3 --version

# Initialize uv project (if pyproject.toml does not exist)
if [ ! -f pyproject.toml ]; then
    echo "Initializing uv project..."
    uv init
fi

# Create virtual environment
echo "Creating virtual environment..."
uv venv

#Activating virtual  Environment
source .venv/bin/activate

#upgrade pip
uv pip install --upgrade pip

#Install dependencies
if [ -f requirements.txt ];then
   echo "Installing requirements"
   uv pip install -r requirements.txt
fi

#create .env from example
if [ ! -f .env ] && [ -f .env.example ];then
    cp .env.example .env 
    echo ".env file created"
fi

echo "Setup completed successfully"
echo "Activate environment using:"
echo "source .venv/bin/activate"