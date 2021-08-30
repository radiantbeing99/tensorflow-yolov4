#FROM nvcr.io/nvidia/tensorflow:19.10-py3
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

COPY . /app

WORKDIR /app

RUN apt-get update && apt-get install -y libgl1 libglib2.0-0 libsm6 libxrender1 libfontconfig1 libice6 python3 python3-pip

RUN python3 -m pip install -U pip

RUN pip3 install -r requirements-gpu.txt

ENTRYPOINT ["python3", "detectvideo.py"]