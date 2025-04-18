﻿"Filed out from Dolphin Smalltalk"!

WARequestHandlerTest subclass: #WARegistryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARegistryTest guid: (GUID fromString: '{a02cc568-207b-41e1-91ae-2f20248e3f88}')!

WARegistryTest comment: ''!

!WARegistryTest categoriesForClass!RequestHandling! !

!WARegistryTest methodsFor!

newHandler	^ WARegistry new!

requestContextFor: aRequest	^ WARequestContext request: aRequest response: WABufferedResponse!

requestWithMethod: aString	^ WARequest		method: aString		uri: '/app/oneo'!

testCopyRegistry	| stored key copy stored2 key2 |	(handler isKindOf: WAApplication) "applicaiton can only track session"		ifTrue: [ ^ self ].	stored := WARequestHandler new.	key := handler register: stored.	copy := handler copy.		self assert: (handler cache at: key ifAbsent: [ nil ]) = stored.	"Since registry keys are dynamically assigned, we don't expect a copy to have the same	keys and values."		stored2 := WARequestHandler new.	key2 := handler register: stored2.	self assert: (handler cache at: key2 ifAbsent: [ nil ]) = stored2.	self assert: (copy cache at: key2 ifAbsent: [ nil ]) isNil.		copy clear.	self assert: (handler cache at: key ifAbsent: [ nil ]) = stored!

testUrlFor	| context request response documentHandler url |	handler class == WARegistry "only WARegistry supports tracking generic request handlers"		ifFalse: [ ^ self ].	request := self requestWithMethod: 'GET'.	request setCookies: (Array with: (WARequestCookie key: '_s' value: 'sessionid')).	response := WABufferedResponse new.	documentHandler := WADocumentHandler document: 'ESUG 2015'.		context := WARequestContext request: request response: response.	url := WACurrentRequestContext		use: context		during: [ handler register: documentHandler;			urlFor: documentHandler ].	self assert: (url queryFields includesKey: '_s').	request url addField: '_s' value: (url queryFields at: '_s').			[  handler handle: context ]		on: WAResponseNotification		do: [ :notification | ].			self assert: response status = 200.	self assert: (response cookies isEmpty)! !

!WARegistryTest categoriesForMethods!
newHandler!private! !
requestContextFor:!private! !
requestWithMethod:!private! !
testCopyRegistry!public!tests! !
testUrlFor!public!tests! !
!

