# Base image is AspNetCore 2.0.7 for linux
FROM microsoft/aspnetcore:2.0.7-jessie

# Working directory
WORKDIR /src/UserService.Host/

# Documents which port can be exposed at runtime
EXPOSE 80/tcp

# Copies the content of "out" in the container filesystem
COPY /src/UserService.Host/out .

# Specifies to run a .NET Core app
ENTRYPOINT [ "dotnet", "UserService.Host.dll" ]
