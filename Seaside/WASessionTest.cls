"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WASessionTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionTest guid: (GUID fromString: '{46622fcd-e2ac-45dd-9ef1-6cfa77410110}')!

WASessionTest comment: ''!

!WASessionTest categoriesForClass!Seaside-Tests-Session! !

!WASessionTest methodsFor!

newHandler	^ WAApplication new		preferenceAt: #trackingStrategy put: WAQueryFieldHandlerTrackingStrategy new;		preferenceAt: #serverHostname put: 'www.seaside.st';		yourself!

requestWithMethod: aString	^ WARequest		method: aString		uri: '/'!

setUp	super setUp.	handler := self newHandler!

testRegisterDocumentHandler	| context request response documentHandler sessions session url |	request := WARequest method: 'GET' uri: '/'.	response := WABufferedResponse new.	documentHandler := (WADocumentHandler		document: 'body: {color: red}'		mimeType: WAMimeType textCss		fileName: nil).		"create a new session"	context := WARequestContext request: request response: response.	[  handler handle: context ]		on: WAResponseNotification		do: [ :notification | ].			self assert: response status = WAResponse statusOk.	sessions := handler sessions.	self assert: sessions size = 1.	session := sessions first.		"register the document handler"	url := session register: documentHandler.		self assert: (url queryFields includesKey: session documentHandlerFieldName).	request := WARequest method: 'GET' uri: url.	response := WABufferedResponse new.		"dispatch to the document handler"	context := WARequestContext request: request response: response.	[  handler handle: context ]		on: WAResponseNotification		do: [ :notification | ].	self assert: response status equals: WAResponse statusOk.	self assert: response contents equals: documentHandler document contents.		"dispatch to a not existing handler"	url := url copy.	url queryFields at: session documentHandlerFieldName put: 'not_existing'.	request := WARequest method: 'GET' uri: url.	response := WABufferedResponse new.	context := WARequestContext request: request response: response.	[  handler handle: context ]		on: WAResponseNotification		do: [ :notification | ].	self assert: response status = WAResponse statusNotFound! !

!WASessionTest categoriesForMethods!
newHandler!private! !
requestWithMethod:!public!running! !
setUp!public!running! !
testRegisterDocumentHandler!public!tests! !
!

!WASessionTest class methodsFor!

shouldInheritSelectors	^ true! !

!WASessionTest class categoriesForMethods!
shouldInheritSelectors!public!testing! !
!

