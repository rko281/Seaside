"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WALegacyRedirectionHandlerTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WALegacyRedirectionHandlerTest guid: (GUID fromString: '{450e561d-43cb-4efb-a400-81fd0ed53225}')!
WALegacyRedirectionHandlerTest comment: ''!
!WALegacyRedirectionHandlerTest categoriesForClass!Seaside-Tests-Environment! !
!WALegacyRedirectionHandlerTest methodsFor!

createHandlers	^ Array with: handler!

createRequest	^ WARequest		method: 'GET'		uri: '/seaside/pier/environment/pier.png?view=PRDownloadView'		version: 1.1		!

setUp	handler := WALegacyRedirectionHandler new!

testKeepParameters	| responseUrl response |	[ handler handleFiltered: self requestContext ]		on: WAResponseNotification		do: [ :notification | "ignore" ].	response := self requestContext response.	self assert: response status = 301.	responseUrl := response headerAt: 'Location'.	self assert: responseUrl greaseString = '/pier/environment/pier.png?view=PRDownloadView'! !
!WALegacyRedirectionHandlerTest categoriesFor: #createHandlers!configuration!public! !
!WALegacyRedirectionHandlerTest categoriesFor: #createRequest!configuration!public! !
!WALegacyRedirectionHandlerTest categoriesFor: #setUp!public!running! !
!WALegacyRedirectionHandlerTest categoriesFor: #testKeepParameters!public!tests! !

