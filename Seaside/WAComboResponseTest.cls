"Filed out from Dolphin Smalltalk"!

WAResponseTest subclass: #WAComboResponseTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAComboResponseTest guid: (GUID fromString: '{4f232074-f99a-4929-a133-d2d86b31a9ed}')!

WAComboResponseTest comment: ''!

!WAComboResponseTest categoriesForClass!Seaside-Tests-Core-HTTP! !

!WAComboResponseTest methodsFor!

contents	| stream |	stream := WriteStream on: String new.	self response writeOn: stream.	^ stream contents!

response	^ super response ifNil: [ response := WAComboResponse external: (GRPlatform current writeCharacterStreamOn: (String new: 4096)) ]!

testEmptyAfterReset	| resetPossible |	resetPossible := self response		status: WAResponse statusNotFound;		attachmentWithFileName: 'upload.csv';		nextPutAll: 'the content';		resetIfPossible.	self assert: resetPossible.	self assertLines: #('HTTP/1.1 200 OK' 'Content-Length: 0' '')!

testIsCommitted	super testIsCommitted.	self deny: self response isCommitted!

testResetThenWrite	| resetPossible |	resetPossible := self response		status: WAResponse statusNotFound;		attachmentWithFileName: 'upload.csv';		nextPutAll: 'the wrong content';		resetIfPossible.	self assert: resetPossible.	self response		status: WAResponse statusImATeapot;		headerAt: 'X-The-Header' put: 'the value';		nextPutAll: 'the real content'.	self assertLines: #('HTTP/1.1 418 I''m a teapot' 'X-The-Header: the value' 'Content-Length: 16' '' 'the real content')! !

!WAComboResponseTest categoriesForMethods!
contents!accessing!public! !
response!accessing!public! !
testEmptyAfterReset!public!tests/conveniance! !
testIsCommitted!public!tests! !
testResetThenWrite!public!tests/conveniance! !
!

