from fastapi import FastAPI

app = FastAPI()
@app.on_event("startup")
async def run_on_startup():
    print('This function will run on startup')

@app.get("/")
def read_root():
    return {"Hello": "World"}