# Seaside
[Seaside 3.4](https://github.com/SeasideSt) for [Dolphin Smalltalk 7.1](https://github.com/dolphinsmalltalk/Dolphin)

Core packages ported from [Seaside](https://github.com/SeasideSt/Seaside) 21st April 2020

Dolphin Seaside and Grease packages adapted from [Infoil](http://www.infoil.com.ar/seaside)'s D6 versions with thanks and acknowledgement.

Dolphin HTTP Server and Seaside adaptor created by [Sebastian Calvo](https://github.com/fxgallego)


## Getting Started
* Install [Dolphin Smalltalk 7.1](https://github.com/dolphinsmalltalk/Dolphin)

### Automated Installation
* Download and install [GitHub Package Manager](https://github.com/rko281/GitHub)
* Evaluate:
```
GitHubPackageManager beAuthenticated install: 'rko281/Seaside'.
```
* Due to the number of packages and prerequisites, [authenticated GitHub requests](https://github.com/rko281/GitHub#security) are required 
* All required packages and prerequisites will be downloaded and installed
* Once installation is complete the Seaside Welcome server will be started


### Manual Installation
* This repository should be cloned/downloaded to your image directory
* Also download the following repositories:
   * [Grease](https://github.com/rko281/Grease)
   * [Portishead](https://github.com/rko281/Portishead)
   * [Dolphin HTTP Server and Seaside Adaptor](https://github.com/fxgallego/DolphinHttpServer)
   * [Contributions](https://github.com/dolphinsmalltalk/Contributions) (specifically the branch containing `DS Partial Continuations`)
* Install package `Seaside` - this will load all required prerequisites and start the Welcome server
