"Filed out from Dolphin Smalltalk"!

WAAnchorTag subclass: #WAImageMapTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAImageMapTag guid: (GUID fromString: '{e16b9f89-a5e8-42de-9cad-ce9a9946b579}')!

WAImageMapTag comment: 'A WAImageMapTag is supposed to be used like this:	html map		callback: [ :point | self click: point ];		with: [ html image url: ''foo.gif'' ]			An example can be found in WAScreenshot.Technical:http://www.w3.org/TR/html4/struct/objects.html#include-mapsThe location clicked is passed to the server as follows. The user agent derives a new URI from the URI specified by the href attribute of the A element, by appending `?'' followed by the x and y coordinates, separated by a comma. The link is then followed using the new URI. For instance, in the given example, if the user clicks at the location x=10, y=27 then the derived URI is "http://www.acme.com/cgi-bin/competition?10,27".'!

!WAImageMapTag categoriesForClass!Tags! !

!WAImageMapTag methodsFor!

callback: aBlock	"The parameter for the image-map callback must be the last one, as the web-browser will use the same name and replace it with the coordinates."	self url addField: (self storeCallback: (WAMapCallback on: aBlock)) value: ''! !

!WAImageMapTag categoriesForMethods!
callback:!callbacks!public! !
!

