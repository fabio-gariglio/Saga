# Saga
Let's play with containers and microservices architecture 

## Getting started

Docker community edition comes for a variety of operating systems. Despite this project is going to be mainly based on Microsoft technologies I decided to pick up Linux as OS for my development. So, let's get it started!

### Setting up the development environment

Since I am a declared Windows user but I chose to use Linux I am going to get latest Ubuntu image that supports Docker and install it as virtual machine using VMWare.

#### VMWare

VMware Workstation Player (formerly known as Player Pro) is a desktop virtualization application that is available for free for personal use and can be downloaded [here](https://www.vmware.com/uk/products/workstation-player.html).

#### Ubuntu

Today's latest Ubuntu version that support Docker is Artful 17.10. Since I want to use it to develop .NET Core application I need to make sure the version I want to use supports both Docker and .NET Core. So, check the latest version that support both:
* https://store.docker.com/editions/community/docker-ce-server-ubuntu
* https://docs.microsoft.com/en-us/dotnet/core/linux-prerequisites?tabs=netcore2x

As just mentioned latest Ubuntu version is [Artful 17.10](http://releases.ubuntu.com/17.10/ubuntu-17.10.1-desktop-amd64.iso)

## Installing docker-compose

```
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

## Run docker-compose

```
/usr/local/bin/docker-compose up
```
