# Portishead
Pharo compatibility for Dolphin Smalltalk

## What is Portishead?
Portishead is a compatibility layer to ease the porting of Pharo frameworks to Dolphin Smalltalk. It consists of classes and methods equivalent to those found in Pharo - these may be straight copies, adaptations or redirections to equivalent Dolphin code. Functionality is unlikely to be complete but just enough to enable the dependent framework code to be ported with no/minimal changes.

### How does Portishead differ from Grease?
Grease is a portability package which largely implements a new, common API across Smalltalk dialects. Portishead by contrast aims to implement classes and methods with the same names and API as those in Pharo.

### Why 'Portishead'
* Like Pharo, Portishead is named after a [lighthouse](https://en.wikipedia.org/wiki/Portishead_Point_lighthouse)
* **Port**ishead is a **port**ability framework

## Getting Started
* This repository is primarily used as a submodule by other repositories (Seaside, Iliad...)
* To download standalone, clone/download to a 'Portishead' subdirectory within your Dolphin working directory