FROM python:3.9-slim

WORKDIR /code

COPY ./requirements /code/requirements

RUN pip install --no-cache-dir --upgrade -r /code/requirements/base.txt

COPY . /code/

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]

# If running behind a proxy like Nginx or Traefik add --proxy-headers
# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--proxy-headers"]
