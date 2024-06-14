
# Docker .NET Core Example

## Description

This repository provides an example of using Docker with a .NET Core application. It demonstrates how to containerize a .NET Core application using Docker, which is useful for developers looking to deploy their applications in a consistent and reproducible environment.

## Requirements

- .NET Core SDK
- Docker
- Docker Compose (optional)
- Yarn or npm for package management

## Mode of Use

1. Clone the repository:
   ```bash
   git clone https://github.com/ferrerallan/docker-dotnetcore-example.git
   ```
2. Navigate to the project directory:
   ```bash
   cd docker-dotnetcore-example
   ```
3. Ensure you have Docker installed on your machine.
4. Build the Docker image:
   ```bash
   docker build -t docker-dotnetcore-example .
   ```
5. Run the Docker container:
   ```bash
   docker run -d -p 5000:80 docker-dotnetcore-example
   ```

## Implementation Details

- **Dockerfile**: Contains instructions for building the Docker image.
- **src/**: Contains the .NET Core application source code.
- **docker-compose.yml**: Configuration file for Docker Compose to manage multi-container applications (if applicable).

### Example of Use

Here is an example of a simple Dockerfile for a .NET Core application:

```dockerfile
# Use the official .NET Core SDK image as a build stage
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app

# Copy the project file and restore any dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the rest of the application code and build the application
COPY . ./
RUN dotnet publish -c Release -o out

# Use the official .NET Core runtime image as the runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=build /app/out .
ENTRYPOINT ["dotnet", "YourAppName.dll"]
```

This Dockerfile uses multi-stage builds to create a lightweight Docker image for running a .NET Core application.

## License

This project is licensed under the MIT License.

You can access the repository [here](https://github.com/ferrerallan/docker-dotnetcore-example).
