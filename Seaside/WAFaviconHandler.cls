"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WAFaviconHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFaviconHandler guid: (GUID fromString: '{c4d5f76e-9aa8-4e13-a6c1-5e366d1cf2e8}')!

WAFaviconHandler comment: 'avoid throwing a 404 if there is no faviconavoid showing cached versions of faviconhttps://github.com/SeasideSt/Seaside/issues/1445'!

!WAFaviconHandler categoriesForClass!Seaside-Tools-Web! !

!WAFaviconHandler methodsFor!

handleFiltered: aRequestContext	aRequestContext response		contentType: WAMimeType imageXIcon;		binary;		nextPutAll: WAToolFiles basicNew faviconIco! !

!WAFaviconHandler categoriesForMethods!
handleFiltered:!handling!public! !
!

!WAFaviconHandler class methodsFor!

initialize 	WADispatcher default register: self new at: 'favicon.ico'! !

!WAFaviconHandler class categoriesForMethods!
initialize!initialize!public! !
!

