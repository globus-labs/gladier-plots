FROM jupyter/base-notebook

ENV JUPYTER_ENABLE_LAB=yes

RUN pip install --upgrade pip
COPY requirements.txt /home/jovyan/
RUN pip install -r requirements.txt

COPY data/*  /home/jovyan/work/
COPY gladier-figures.ipynb /home/jovyan/work/

USER root

RUN addgroup --system jovyan

USER jovyan