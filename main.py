from fastapi import FastAPI

app=FastAPI()

@app.get("/")
def home():
    return {"message":"Welcome to the AI Runspace successfully"}

def main():
    print("Hello from ai-workspace-template!")


if __name__ == "__main__":
    main()
