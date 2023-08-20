# Dependencies Stage
FROM python:3.11-slim AS dependencies
WORKDIR /dependencies
COPY ./server/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Runner Stage
FROM python:3.11-slim AS runner
WORKDIR /server
COPY --from=dependencies /usr/local/lib/python3.11/site-packages/ /usr/local/lib/python3.11/site-packages/
COPY --from=dependencies /usr/local/bin/ /usr/local/bin/
COPY ./server ./
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3001"]