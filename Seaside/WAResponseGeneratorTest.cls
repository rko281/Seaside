"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAResponseGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAResponseGeneratorTest guid: (GUID fromString: '{633b9930-728f-41ba-9007-081ff0955572}')!

WAResponseGeneratorTest comment: ''!

!WAResponseGeneratorTest categoriesForClass!RequestHandling! !

!WAResponseGeneratorTest methodsFor!

assertContents: aString	self assert: self requestContext response contents = aString!

testForbidden	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	generator forbidden.	self assertContents: 'Error: you are forbidden to access "/"'!

testInternalError	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	[ WATestError signal ]		on: WATestError		do: [ :error |			generator internalError: error ].	self assertContents: 'Internal Error: '!

testNotFound	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	generator notFound.	self assertContents: '/ not found'!

testNotImplemented	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	generator notImplemented.	self assertContents:  'Not Implemented'!

testPageExpired	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	generator pageExpired.	self assertContents: 'This page has expired, please use the back-button to navigate to the last valid page.'! !

!WAResponseGeneratorTest categoriesForMethods!
assertContents:!private! !
testForbidden!public!tests! !
testInternalError!public!tests! !
testNotFound!public!tests! !
testNotImplemented!public!tests! !
testPageExpired!public!tests! !
!

