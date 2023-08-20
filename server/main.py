from fastapi import FastAPI

app = FastAPI()
@app.on_event("startup")
async def get_server_pid():
    pass

@app.get("/")
def read_root():
    return {"Hello": "World"}