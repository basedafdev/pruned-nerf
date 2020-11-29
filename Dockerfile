FROM continuumio/miniconda3
WORKDIR /app

ADD environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml
SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]

RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH
RUN python -c "import flask"

COPY run_nerf.py .

ENTRYPOINT [ "python", "run_nerf.py","--config","config_fern.txt" ]
RUN tensorboard --logdir=logs/summaries --port=6006