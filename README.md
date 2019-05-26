# Seaside
[Seaside 3.3](https://github.com/SeasideSt) for [Dolphin Smalltalk 7.1](https://github.com/dolphinsmalltalk/Dolphin)

Core packages ported from [Seaside](https://github.com/SeasideSt/Seaside) 24th May 2019

Dolphin Seaside and Grease packages adapted from [Infoil](http://www.infoil.com.ar/seaside)'s D6 versions with thanks and acknowledgement.

Dolphin HTTP Server and Seaside adaptor created by [Sebastian Calvo](https://github.com/fxgallego)


## Getting Started
* Install [Dolphin Smalltalk 7.1](https://github.com/dolphinsmalltalk/Dolphin)

### Automated Installation
* Download and install [GitHub Package Manager](https://github.com/rko281/GitHub)
* Evaluate:
```
GitHubPackageManager
    install: 'rko281/Seaside/Seaside/Seaside-Core';
    install: 'rko281/Seaside/Seaside/Seaside-Dolphin-Core';
    install: 'fxgallego/DolphinHttpServer/SeasideHttpServerAdaptor/Seaside Http Server Adaptor';
    install: 'rko281/Seaside'.
```
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
