"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WALegacyRedirectionHandlerTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WALegacyRedirectionHandlerTest guid: (GUID fromString: '{fa8d622d-279a-4410-93f5-17b4c1363430}')!

WALegacyRedirectionHandlerTest comment: ''!

!WALegacyRedirectionHandlerTest categoriesForClass!Base! !

!WALegacyRedirectionHandlerTest methodsFor!

createHandlers	^ Array with: handler!

createRequest	^ WARequest		method: 'GET'		uri: '/seaside/pier/environment/pier.png?view=PRDownloadView'		version: 1.1!

setUp	handler := WALegacyRedirectionHandler new!

testKeepParameters	| responseUrl response |	[ handler handleFiltered: self requestContext ]		on: WAResponseNotification		do: [ :notification | "ignore" ].	response := self requestContext response.	self assert: response status = 301.	responseUrl := response headerAt: 'Location'.	self assert: responseUrl greaseString = '/pier/environment/pier.png?view=PRDownloadView'! !

!WALegacyRedirectionHandlerTest categoriesForMethods!
createHandlers!configuration!public! !
createRequest!configuration!public! !
setUp!public!running! !
testKeepParameters!public!tests! !
!

