FROM quay.io/jupyter/base-notebook:latest

RUN pip install geojson ipyleaflet jupyterlab-geojson matplotlib pandas py4j 

USER root
RUN apt-get update && apt-get install -y openjdk-11-jdk
USER jovyan

# RUN pip install git+https://github.com/GNS-Science/solvis.git@b2ce5bd97ff7f0d85a3fdfdf24815bec2b42cdc7
# RUN pip install git+https://github.com/GNS-Science/solvis-graphql-api@b77645d230

EXPOSE 8888

ENTRYPOINT /usr/local/bin/start.sh start-notebook.py --port=8887