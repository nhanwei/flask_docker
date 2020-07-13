# Install the base requirements for the app.
# This stage is to support development.
FROM python:3.7-slim-buster AS base

ENV PIP_NO_CACHE_DIR=0

WORKDIR /app
COPY app requirements.txt /app/

RUN apt-get update \
    && apt-get install bash curl ca-certificates less htop \
		g++ make wget rsync apt-utils python-scipy \
        libpng-dev musl -y\
	&&  pip install --upgrade pip \
	&&  pip install numpy==1.17.3 \
	&&  pip install scipy==1.3.1 \
	&&  pip install Cython

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["predictor_app.py"]
