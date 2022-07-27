# base image
FROM mcr.microsoft.com/dotnet/aspnet:6.0

LABEL version="1.0" maintainer="ALLAN"

# name in container
WORKDIR /app

# copy to container
COPY ./dist .

# command to run then starts
ENTRYPOINT ["dotnet", "docker-dotnetcore-example.dll"]