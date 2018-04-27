# UserService

## Build

```
$ dotnet restore
$ dotnet build
```

## Run

```
$ dotnet run --project src/UserService.Host/UserService.Host.csproj
```

## Containerise

```
$ dotnet publish -c Release -o out
$ docker build -t user-service:0.0.1 .
```
