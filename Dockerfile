# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-minimal-notebook
FROM jupyter/minimal-notebook:python-3.9 as runtime

COPY . /tmp/
RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt

EXPOSE 8888 8082
