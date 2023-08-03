FROM python:3.8

ENV PYTHONFAULTHANDLER=1 \
  PYTHONUNBUFFERED=1 \
  PYTHONHASHSEED=random \
  PIP_NO_CACHE_DIR=off \
  PIP_DISABLE_PIP_VERSION_CHECK=on \
  PIP_DEFAULT_TIMEOUT=100

RUN pip install "poetry==1.5.1"

WORKDIR /code/
COPY pyproject.toml *.lock /code/

RUN poetry config virtualenvs.create false \
  &&  poetry install $(test "$YOUR_ENV" == production && echo "--without dev") --no-interaction --no-ansi

ADD . /code/
