# docker-flask-simple 

Simple Flask in Docker with Multistage Build in Github Actions

```
REPOSITORY                       TAG       IMAGE ID       CREATED         SIZE
ghcr.io/antyung88/flask-simple   slim      8a40e3455550   2 minutes ago   17MB
ghcr.io/antyung88/flask-simple   latest    4f27c8422f07   2 minutes ago   68.1MB
```

```
CONTAINER ID   IMAGE                                 COMMAND                CREATED          STATUS          PORTS                                       NAMES
9e66074295d8   ghcr.io/antyung88/flask-simple:slim   "python app/main.py"   2 seconds ago    Up 19 seconds   0.0.0.0:8080->8080/tcp, :::8080->8080/tcp   flask-simple-slim
0a68eebd1859   ghcr.io/antyung88/flask-simple:latest "python app/main.py"   2 seconds ago    Up 3 seconds    0.0.0.0:8080->8080/tcp, :::8080->8080/tcp   flask-simple
```
