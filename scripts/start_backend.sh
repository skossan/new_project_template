#!/bin/bash
cd "$(dirname "$0")"/../server
uvicorn main:app --reload --port 3001