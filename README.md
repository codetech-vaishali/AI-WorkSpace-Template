# Quick Setup (One-Command Setup)

Clone the repository:

```bash
git clone <your-repository-url>
cd ai-workspace-template
```

Give execute permission to the setup script:

```bash
chmod +x setup_env.sh
```

Run the setup script:

```bash
./setup_env.sh
```

The script will automatically:

- Create virtual environment
- Upgrade pip
- Install dependencies
- Create `.env` file

Activate the environment:

```bash
source venv/bin/activate
```

Start the FastAPI server:

```bash
uvicorn app.main:app --reload
```

Application URL:

```text
http://127.0.0.1:8000
```

---

# Troubleshooting

## Python Version Mismatch

Check installed Python version:

```bash
python3 --version
```

Recommended version:

```text
Python 3.11+
```

If Python is missing:

### Ubuntu/Debian

```bash
sudo apt update
sudo apt install python3 python3-venv python3-pip
```

### Mac

Install using Homebrew:

```bash
brew install python
```

---

## Permission Denied Error

If you get:

```text
Permission denied
```

Run:

```bash
chmod +x setup_env.sh
```

---

## Virtual Environment Not Activating

Mac/Linux:

```bash
source venv/bin/activate
```

Windows PowerShell:

```powershell
venv\Scripts\activate
```

---

## pip Not Found

Install pip:

```bash
python3 -m ensurepip --upgrade
```

---

## Dependency Installation Failed

Upgrade pip manually:

```bash
pip install --upgrade pip
```

Then reinstall:

```bash
pip install -r requirements.txt
```