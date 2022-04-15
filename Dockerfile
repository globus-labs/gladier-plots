# Start from a core stack version
FROM jupyter/scipy-notebook:latest

RUN git clone https://github.com/globus-labs/gladier-plots && \
    cd gladier-plots && pip install .