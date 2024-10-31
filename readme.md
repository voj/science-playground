```bash
docker build -t science-playground .
docker run -it --rm -v ${pwd}/WORKDIR:/home/jovyan/WORKDIR --name science-playground -p 8887:8887 science-playground
docker run -it --rm -v ${pwd}/WORKDIR:/home/jovyan/WORKDIR -v ${pwd}/..:/home/jovyan/GNS --name science-playground -p 8887:8887 science-playground

in the docker image from WORKDIR:
NZSHM22_APP_PORT=25333 java --illegal-access=permit -cp nzshm-opensha-all.jar nz.cri.gns.NZSHM22.opensha.util.NZSHM22_PythonGateway


```

