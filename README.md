# docker-dotnetcore-example
Example of docker's using with a dotnetcore application

- to build the image:
docker build -t aspmvc:3 .

- to run:
docker container run -p 5000:80 aspmvc:3
