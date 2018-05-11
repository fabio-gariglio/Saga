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

#### Docker CE

Let's install Docker Community Edition as per [documented](https://docs.docker.com/install/linux/docker-ce/ubuntu/#set-up-the-repository):

```
sudo apt-get update

sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt-get update

sudo apt-get install docker-ce

sudo usermod -aG docker $USER
```

Logout and login!

#### Docker Compose

```
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

#### .NET Core SDK

Latest version of .NET Core SDK is 2.1.3 which is still in preview but that's the one I am going to install as documented [here](https://www.microsoft.com/net/download/linux-package-manager/ubuntu17-10/sdk-2.1.300-rc1).

```
wget -q packages-microsoft-prod.deb https://packages.microsoft.com/config/ubuntu/17.10/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1.300-rc1-008673
```

#### Visual Studio Code

Last but not least I need a great development IDE. I chose [Visual Studio Code](https://code.visualstudio.com/Download) for this job.

In addition to the application I am going to add following extensions:
* C# for Visual Studio Code (powered by OmniSharp)
* Docker
* SQLTools for VSCode

## Run docker-compose

```
docker-compose up
```
