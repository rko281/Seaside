"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #HTTPResponseTest
	instanceVariableNames: 'response'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPResponseTest guid: (GUID fromString: '{870fbcb5-2657-4fb6-9325-0a62a587f8fa}')!
HTTPResponseTest comment: ''!
!HTTPResponseTest categoriesForClass!Unclassified! !
!HTTPResponseTest methodsFor!

crlf
	^String with: Character cr with: Character lf!

testInternalServerError
	| ws rs |
	response := HTTPResponse internalServerError.
	ws := SwazooStream on: String new.
	response printStatusOn: ws.
	rs := SwazooStream on: ws writeBuffer contents.
	self assert: rs nextLine = 'HTTP/1.1 500 Internal Server Error'!

testOK
	| ws rs |
	response := HTTPResponse ok.
	ws := SwazooStream on: String new.
	response printStatusOn: ws.
	rs := SwazooStream on: ws writeBuffer contents.
	self assert: rs nextLine = 'HTTP/1.1 200 OK'!

testResponseTypes
	self assert: (HTTPResponse badRequest) isBadRequest.
	self assert: (HTTPResponse found) isFound.
	self assert: (HTTPResponse internalServerError) isInternalServerError.
	self assert: (HTTPResponse movedPermanently) isMovedPermanently.
	self assert: (HTTPResponse notFound) isNotFound.
	self assert: (HTTPResponse notImplemented) isNotImplemented.
	self assert: (HTTPResponse notModified) isNotModified.
	self assert: (HTTPResponse ok) isOk.
	self assert: (HTTPResponse redirectLink) isRedirectLink.
	self assert: (HTTPResponse seeOther) isSeeOther.! !
!HTTPResponseTest categoriesFor: #crlf!private! !
!HTTPResponseTest categoriesFor: #testInternalServerError!public!testing! !
!HTTPResponseTest categoriesFor: #testOK!public!testing! !
!HTTPResponseTest categoriesFor: #testResponseTypes!public!testing! !

