﻿"Filed out from Dolphin Smalltalk 7"!

WARestfulHandler subclass: #WAMimeTypeStubHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMimeTypeStubHandler guid: (GUID fromString: '{2dd40f39-57fd-48de-ac1a-9a0b1aa242a5}')!
WAMimeTypeStubHandler comment: ''!
!WAMimeTypeStubHandler categoriesForClass!Seaside-Tests-REST-Core! !
!WAMimeTypeStubHandler methodsFor!

processApplicationXml	##(Pragma get).	##(Pragma path: 'index').	##(Pragma consumes: 'application/xml').	!

processTwo	##(Pragma get).	##(Pragma path: 'index').	##(Pragma consumes: 'foo/bar').	##(Pragma consumes: 'zork/fnord').	!

processXml	##(Pragma get).	##(Pragma path: 'index').	##(Pragma consumes: '*/xml').	!

produceJpeg	##(Pragma get).	##(Pragma path: 'index').	##(Pragma produces: 'image/jpeg').	!

producePng	##(Pragma get).	##(Pragma path: 'index').	##(Pragma produces: 'image/png').	! !
!WAMimeTypeStubHandler categoriesFor: #processApplicationXml!public!request/handling! !
!WAMimeTypeStubHandler categoriesFor: #processTwo!public!request/handling! !
!WAMimeTypeStubHandler categoriesFor: #processXml!public!request/handling! !
!WAMimeTypeStubHandler categoriesFor: #produceJpeg!public!request/handling! !
!WAMimeTypeStubHandler categoriesFor: #producePng!public!request/handling! !

