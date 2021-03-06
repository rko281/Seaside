﻿"Filed out from Dolphin Smalltalk 7"!

WAAnchorTag subclass: #WAImageMapTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAImageMapTag guid: (GUID fromString: '{6c16f44b-efc7-4c28-bef9-6bf282024711}')!
WAImageMapTag comment: 'A WAImageMapTag is supposed to be used like this:	html map		callback: [ :point | self click: point ];		with: [ html image url: ''foo.gif'' ]			An example can be found in WAScreenshot.Technical:http://www.w3.org/TR/html4/struct/objects.html#include-mapsThe location clicked is passed to the server as follows. The user agent derives a new URI from the URI specified by the href attribute of the A element, by appending `?'' followed by the x and y coordinates, separated by a comma. The link is then followed using the new URI. For instance, in the given example, if the user clicks at the location x=10, y=27 then the derived URI is "http://www.acme.com/cgi-bin/competition?10,27".'!
!WAImageMapTag categoriesForClass!Seaside-Canvas-Tags! !
!WAImageMapTag methodsFor!

callback: aBlock	"The parameter for the image-map callback must be the last one, as the web-browser will use the same name and replace it with the coordinates."	self url addField: (self storeCallback: (WAMapCallback on: aBlock)) value: ''! !
!WAImageMapTag categoriesFor: #callback:!callbacks!public! !

