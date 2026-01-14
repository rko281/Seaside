"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAUtf8ResponseGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUtf8ResponseGeneratorTest guid: (GUID fromString: '{b19a223c-e56d-4670-9df6-d3651a7e013c}')!

WAUtf8ResponseGeneratorTest comment: ''!

!WAUtf8ResponseGeneratorTest categoriesForClass!Seaside-Tests-UTF8! !

!WAUtf8ResponseGeneratorTest methodsFor!

assertContents: aString	self assert: self requestContext response contents = aString!

createRequest 	| request |	request := super createRequest.	request url		addToPath: 'book';		addToPath: (String with: (Character codePoint: 225) with: (Character codePoint: 269)).	^ request!

testForbidden	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	generator forbidden.	self assertContents: 'Error: you are forbidden to access "/book/', (String with: (Character codePoint: 225) with: (Character codePoint: 269)), '"'!

testNotFound	| generator |	generator := WAResponseGenerator on: self requestContext.	self requestContext response nextPutAll: 'oops'.	generator notFound.	self assertContents: '/book/', (String with: (Character codePoint: 225) with: (Character codePoint: 269)), ' not found'! !

!WAUtf8ResponseGeneratorTest categoriesForMethods!
assertContents:!private! !
createRequest!configuration!public! !
testForbidden!public!tests! !
testNotFound!public!tests! !
!

