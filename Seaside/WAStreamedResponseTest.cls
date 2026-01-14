"Filed out from Dolphin Smalltalk"!

WAResponseTest subclass: #WAStreamedResponseTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStreamedResponseTest guid: (GUID fromString: '{597b2d1a-459b-41f1-a48a-b1d10ef1b4e5}')!

WAStreamedResponseTest comment: ''!

!WAStreamedResponseTest categoriesForClass!Seaside-Tests-Core-HTTP! !

!WAStreamedResponseTest methodsFor!

assertLines: anArray	"Streamed responses don't have content length information. They simply can't know."		super assertLines: (anArray reject: [ :each | each beginsWithSubCollection: 'Content-Length' ])!

contents	self response flush.	^ self response stream contents!

response	^ super response ifNil: [ response := WAStreamedResponse on: (WriteStream on: String new) ]!

testCanResetIfNoBody	| resetPossible |	resetPossible := self response		status: WAResponse statusNotFound;		attachmentWithFileName: 'upload.csv';		resetIfPossible.	self assert: resetPossible.	self assertLines: #('HTTP/1.1 200 OK' 'Content-Length: 0' '')!

testCantReset	| resetPossible |	resetPossible := self response		status: WAResponse statusNotFound;		attachmentWithFileName: 'upload.csv';		nextPutAll: 'the content';		resetIfPossible.	self deny: resetPossible.	self assertLines: #('HTTP/1.1 404 Not Found' 'Content-Disposition: attachment; filename="upload.csv"' '' 'the content')!

testCookieAfterCommit	self response flush.	self 		should: [ self response addCookie: WACookie new ]		raise: WAIllegalStateException!

testFlushDelay	self response forbidden.	self response headerAt: 'X-Application-Server' put: 'Seaside'.	self deny: self response isCommitted.	self 		shouldnt: [ self response committedCheck ]		raise: WAIllegalStateException!

testFlushNextPutAll	self response nextPutAll: 'Hello World'. " <-- should flush "	self assert: self response isCommitted.	self 		should: [ self response committedCheck ]		raise: WAIllegalStateException.	self assertLines: #('HTTP/1.1 200 OK' '' 'Hello World')!

testFlushStream	self response stream. " <-- should flush "	self assert: self response isCommitted.	self 		should: [ self response committedCheck ]		raise: WAIllegalStateException.	self assertLines: #('HTTP/1.1 200 OK' '')!

testHeaderAfterCommit	self response flush.	self 		should: [ self response headerAt: 'foo' put: 'bar' ]		raise: WAIllegalStateException.	self 		should: [ self response headerAt: 'foo' append: 'bar' ]		raise: WAIllegalStateException.	self 		should: [ self response removeHeaderAt: 'foo' ]		raise: WAIllegalStateException!

testIsCommitted	super testIsCommitted.	self assert: self response isCommitted!

testStatusAfterCommit	self response flush.	self 		should: [ self response forbidden ]		raise: WAIllegalStateException.	self 		should: [ self response status: 404 message: 'Almost found' ]		raise: WAIllegalStateException! !

!WAStreamedResponseTest categoriesForMethods!
assertLines:!private! !
contents!accessing!public! !
response!accessing!public! !
testCanResetIfNoBody!public!tests/conveniance! !
testCantReset!public!tests/conveniance! !
testCookieAfterCommit!public!tests/state! !
testFlushDelay!public!tests/flush! !
testFlushNextPutAll!public!tests/flush! !
testFlushStream!public!tests/flush! !
testHeaderAfterCommit!public!tests/state! !
testIsCommitted!public!tests! !
testStatusAfterCommit!public!tests/state! !
!

