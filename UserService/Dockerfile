# Base image is AspNetCore 2.0.0 for linux
FROM microsoft/aspnetcore:2.0.0-jessie

# Working directory
WORKDIR /src/UserService.Host/

# Documents which port can be exposed at runtime
EXPOSE 5000/tcp

# Copies the content of "out" in the container filesystem
COPY out .

# Specifies to run a .NET Core app
ENTRYPOINT [ "dotnet", "UserService.Host.dll" ]
