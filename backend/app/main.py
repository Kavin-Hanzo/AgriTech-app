from fastapi import FastAPI
from .routers import user
from .database import engine, Base

# Initialize the FastAPI app
app = FastAPI()

# Import the models and create database tables
Base.metadata.create_all(bind=engine)

# Include the user router
app.include_router(user.router)

@app.get("/")
def read_root():
    return {"message": "Welcome to the FastAPI + Flutter App"}
