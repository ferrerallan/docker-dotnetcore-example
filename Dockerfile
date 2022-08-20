FROM mcr.microsoft.com/dotnet/core/sdk

LABEL author=”Name”

ENV ASPNETCORE_URLS=http://+:5000
ENV ASPNETCORE_ENVIRONMENT=”development”

EXPOSE 5000
WORKDIR /app

CMD [“/bin/bash”, “-c”, “dotnet restore && dotnet run”]