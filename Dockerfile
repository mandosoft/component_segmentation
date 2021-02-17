FROM python:3.8-slim

WORKDIR /usr/src/component_segmentation

RUN apt-get update && apt-get install -y build-essential git wget

RUN git clone https://github.com/graph-genome/component_segmentation.git .

RUN pip install -r requirements.txt

ENV PYTHONPATH="/usr/src/component_segmentation:${PYTHONPATH}"

ENTRYPOINT ["python","matrixcomponent/segmentation.py"]