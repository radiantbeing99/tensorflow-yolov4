FROM nvcr.io/nvidia/tensorflow:21.03-tf2-py3

COPY . /app

WORKDIR /app

RUN apt-get update && apt-get install -y libgl1 libglib2.0-0

RUN pip install -r requirements-docker.txt

ENTRYPOINT ["python", "detectvideo.py"]