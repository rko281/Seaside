"Filed out from Dolphin Smalltalk"!

WAResponseTest subclass: #WABufferedResponseTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABufferedResponseTest guid: (GUID fromString: '{fe2e7f61-9210-4738-a146-d09ab9b4e652}')!

WABufferedResponseTest comment: ''!

!WABufferedResponseTest categoriesForClass!Seaside-Tests-Core-HTTP! !

!WABufferedResponseTest methodsFor!

contents	| stream |	stream := WriteStream on: String new.	self response writeOn: stream.	^ stream contents!

response	^ super response ifNil: [ response := WABufferedResponse new ]!

testEmptyAfterReset	| resetPossible |	resetPossible := self response		status: WAResponse statusNotFound;		attachmentWithFileName: 'upload.csv';		nextPutAll: 'the content';		resetIfPossible.	self assert: resetPossible.	self assertLines: #('HTTP/1.1 200 OK' 'Content-Length: 0' '')!

testIsCommitted	super testIsCommitted.	self deny: self response isCommitted!

testResetThenWrite	| resetPossible |	resetPossible := self response		status: WAResponse statusNotFound;		attachmentWithFileName: 'upload.csv';		nextPutAll: 'the wrong content';		resetIfPossible.	self assert: resetPossible.	self response		status: WAResponse statusImATeapot;		headerAt: 'X-The-Header' put: 'the value';		nextPutAll: 'the real content'.	self assertLines: #('HTTP/1.1 418 I''m a teapot' 'X-The-Header: the value' 'Content-Length: 16' '' 'the real content')! !

!WABufferedResponseTest categoriesForMethods!
contents!accessing!public! !
response!accessing!public! !
testEmptyAfterReset!public!tests/conveniance! !
testIsCommitted!public!tests! !
testResetThenWrite!public!tests/conveniance! !
!

