"Filed out from Dolphin Smalltalk"!

WARestfulHandler subclass: #WAMimeTypeStubHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMimeTypeStubHandler guid: (GUID fromString: '{780c1753-b165-4fb3-ba41-824be98ff532}')!

WAMimeTypeStubHandler comment: ''!

!WAMimeTypeStubHandler categoriesForClass!Seaside-Tests-REST-Core! !

!WAMimeTypeStubHandler methodsFor!

processApplicationXml	##(Pragma get).	##(Pragma path: 'index').	##(Pragma consumes: 'application/xml').	!

processTwo	##(Pragma get).	##(Pragma path: 'index').	##(Pragma consumes: 'foo/bar').	##(Pragma consumes: 'zork/fnord').	!

processXml	##(Pragma get).	##(Pragma path: 'index').	##(Pragma consumes: '*/xml').	!

produceJpeg	##(Pragma get).	##(Pragma path: 'index').	##(Pragma produces: 'image/jpeg').	!

producePng	##(Pragma get).	##(Pragma path: 'index').	##(Pragma produces: 'image/png').	! !

!WAMimeTypeStubHandler categoriesForMethods!
processApplicationXml!public!request/handling! !
processTwo!public!request/handling! !
processXml!public!request/handling! !
produceJpeg!public!request/handling! !
producePng!public!request/handling! !
!

