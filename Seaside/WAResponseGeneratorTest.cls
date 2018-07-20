"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WAResponseGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAResponseGeneratorTest guid: (GUID fromString: '{5018a960-6b6f-4543-8826-4e9b7396ed98}')!
WAResponseGeneratorTest comment: ''!
!WAResponseGeneratorTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WAResponseGeneratorTest methodsFor!

assertContents: aString	self assert: self requestContext response contents = aString!

testForbidden	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	generator forbidden.	self assertContents: 'Error: you are forbidden to access "/"'!

testInternalError	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	[ WATestError signal ]		on: WATestError		do: [ :error |			generator internalError: error ].	self assertContents: 'Internal Error: '!

testNotFound	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	generator notFound.	self assertContents: '/ not found'!

testNotImplemented	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	generator notImplemented.	self assertContents:  'Not Implemented'!

testPageExpired	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	generator pageExpired.	self assertContents: 'This page has expired, please use the back-button to navigate to the last valid page.'! !
!WAResponseGeneratorTest categoriesFor: #assertContents:!private! !
!WAResponseGeneratorTest categoriesFor: #testForbidden!public!tests! !
!WAResponseGeneratorTest categoriesFor: #testInternalError!public!tests! !
!WAResponseGeneratorTest categoriesFor: #testNotFound!public!tests! !
!WAResponseGeneratorTest categoriesFor: #testNotImplemented!public!tests! !
!WAResponseGeneratorTest categoriesFor: #testPageExpired!public!tests! !

