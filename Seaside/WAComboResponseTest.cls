"Filed out from Dolphin Smalltalk 7"!

WAResponseTest subclass: #WAComboResponseTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAComboResponseTest guid: (GUID fromString: '{66b174fd-1226-4fce-857f-a63f658be61c}')!
WAComboResponseTest comment: ''!
!WAComboResponseTest categoriesForClass!Seaside-Tests-Core-HTTP! !
!WAComboResponseTest methodsFor!

contents	| stream |	stream := WriteStream on: String new.	self response writeOn: stream.	^ stream contents!

response	^ super response ifNil: [ response := WAComboResponse external: (GRPlatform current writeCharacterStreamOn: (String new: 4096)) ]!

testEmptyAfterReset	| resetPossible |	resetPossible := self response		status: WAResponse statusNotFound;		attachmentWithFileName: 'upload.csv';		nextPutAll: 'the content';		resetIfPossible.	self assert: resetPossible.	self assertLines: #('HTTP/1.1 200 OK' 'Content-Length: 0' '')!

testIsCommitted	super testIsCommitted.	self deny: self response isCommitted!

testResetThenWrite	| resetPossible |	resetPossible := self response		status: WAResponse statusNotFound;		attachmentWithFileName: 'upload.csv';		nextPutAll: 'the wrong content';		resetIfPossible.	self assert: resetPossible.	self response		status: WAResponse statusImATeapot;		headerAt: 'X-The-Header' put: 'the value';		nextPutAll: 'the real content'.	self assertLines: #('HTTP/1.1 418 I''m a teapot' 'X-The-Header: the value' 'Content-Length: 16' '' 'the real content')! !
!WAComboResponseTest categoriesFor: #contents!accessing!public! !
!WAComboResponseTest categoriesFor: #response!accessing!public! !
!WAComboResponseTest categoriesFor: #testEmptyAfterReset!public!tests/conveniance! !
!WAComboResponseTest categoriesFor: #testIsCommitted!public!tests! !
!WAComboResponseTest categoriesFor: #testResetThenWrite!public!tests/conveniance! !

