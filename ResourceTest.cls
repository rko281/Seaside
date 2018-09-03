"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ResourceTest
	instanceVariableNames: 'resource'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ResourceTest guid: (GUID fromString: '{03aab7dc-d07b-43a4-a639-c2552a06b399}')!
ResourceTest comment: ''!
!ResourceTest categoriesForClass!Unclassified! !
!ResourceTest methodsFor!

basicGet: uri
	| ws |
	ws := WriteStream on: String new.
	ws nextPutAll: 'GET ', uri, ' HTTP/1.1'.
	self crlfOn: ws.
	ws nextPutAll: 'Host: swazoo.org'.
	self crlfOn: ws.
	self crlfOn: ws.
	^HTTPRequest readFrom: (ReadStream on: ws contents)!

basicGetUri: uriString
	| ws |
	ws := WriteStream on: String new.
	ws nextPutAll: 'GET ' , uriString , ' HTTP/1.1'.
	self crlfOn: ws.
	ws nextPutAll: 'Host: swazoo.org'.
	self crlfOn: ws.
	self crlfOn: ws.
	^HTTPRequest readFrom: (ReadStream on: ws contents)!

basicGetUri: uriString host: hostname port: port 
	| ws |
	ws := WriteStream on: String new.
	ws nextPutAll: 'GET ' , uriString , ' HTTP/1.1'.
	self crlfOn: ws.
	ws nextPutAll: 'Host: ' , hostname.
	port notNil 
		ifTrue: 
			[ws
				nextPut: $:;
				print: port].
	self crlfOn: ws.
	self crlfOn: ws.
	^HTTPRequest readFrom: (ReadStream on: ws contents)!

crlfOn: aStream 
	aStream
		nextPut: Character cr;
		nextPut: Character lf!

setUp
	resource := SwazooResource uriPattern: 'foo'!

testEmptyURIPatternInvalid
	resource uriPattern: ''.
	self deny: resource isValidlyConfigured!

testEnabledByDefault
	self assert: resource isEnabled!

testNilURIPatternDoesNothing
	| pattern |
	pattern := resource uriPattern.
	resource uriPattern: nil.
	self assert: resource uriPattern = pattern!

testValidlyConfigured
	self assert: resource isValidlyConfigured! !
!ResourceTest categoriesFor: #basicGet:!private! !
!ResourceTest categoriesFor: #basicGetUri:!private! !
!ResourceTest categoriesFor: #basicGetUri:host:port:!private! !
!ResourceTest categoriesFor: #crlfOn:!private! !
!ResourceTest categoriesFor: #setUp!public!running! !
!ResourceTest categoriesFor: #testEmptyURIPatternInvalid!public!testing! !
!ResourceTest categoriesFor: #testEnabledByDefault!public!testing! !
!ResourceTest categoriesFor: #testNilURIPatternDoesNothing!public!testing! !
!ResourceTest categoriesFor: #testValidlyConfigured!public!testing! !

