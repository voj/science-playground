```bash
docker build -t science-playground .
docker run -it --rm -v ${pwd}/WORKDIR:/home/jovyan/WORKDIR --name science-playground -p 8889:8888 science-playground
```

