FROM python:3.6

RUN apt-get update && apt-get install -y ffmpeg libsndfile1
RUN pip install musdb museval
RUN pip install spleeter==1.4.5
RUN mkdir -p /model
ENV MODEL_PATH /model
ENTRYPOINT ["spleeter"]