## base image
FROM python:3.9-alpine AS compile-image

## virtualenv
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

## add and install requirements
COPY ./requirements.txt .
RUN pip install -r requirements.txt

## build-image
FROM python:3.9-alpine AS runtime-image

## copy Python dependencies from build image
COPY --from=compile-image /opt/venv /opt/venv

## set working directory
WORKDIR /code
COPY ./app /code/app

## set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PATH="/opt/venv/bin:$PATH"

## run server
ENTRYPOINT ["python"]
CMD ["app/main.py"]
