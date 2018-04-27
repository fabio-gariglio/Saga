# UserService

## Build solution

```
$ dotnet restore
$ dotnet build
```

## Run service

```
$ dotnet run --project src/UserService.Host/UserService.Host.csproj
```

## Build image

```
$ dotnet publish -c Release -o out
$ docker build -t user-service:0.0.1 .
```

## Run container

```
$ docker run -d -p 80:80 user-service:0.0.1
```

# Enjoy!

http://localhost/api/values
