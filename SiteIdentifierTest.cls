"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SiteIdentifierTest
	instanceVariableNames: 'identifier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SiteIdentifierTest guid: (GUID fromString: '{f207b2e2-37d2-4ddc-bab8-bb8ae8006e90}')!
SiteIdentifierTest comment: ''!
!SiteIdentifierTest categoriesForClass!Unclassified! !
!SiteIdentifierTest methodsFor!

setUp
	identifier := SiteIdentifier 
				host: 'localhost'
				ip: '127.0.0.1'
				port: 80!

testCaseInsensitiveMatch
	| another |
	another := SiteIdentifier 
				host: 'lOCaLhOST'
				ip: '127.0.0.1'
				port: 80.
	self assert: (identifier match: another)!

testCurrentUrl
	self assert: identifier currentUrl = 'http://localhost'.
		identifier := SiteIdentifier 
				host: 'localhost'
				ip: '127.0.0.1'
				port: 81.
	self assert: identifier currentUrl = 'http://localhost:81'!

testHostMismatch
	| another |
	another := SiteIdentifier 
				host: 'thisIsMyMachine'
				ip: '127.0.0.1'
				port: 80.
	self deny: (identifier match: another)!

testIPMismatch
	| another |
	another := SiteIdentifier 
				host: 'localhost'
				ip: '127.0.0.2'
				port: 80.
	self deny: (identifier match: another)!

testMatch
	| another |
	another := SiteIdentifier 
				host: 'localhost'
				ip: '127.0.0.1'
				port: 80.
	self assert: (identifier match: another)!

testPortMismatch
	| another |
	another := SiteIdentifier 
				host: 'localhost'
				ip: '127.0.0.1'
				port: 81.
	self deny: (identifier match: another)! !
!SiteIdentifierTest categoriesFor: #setUp!public!running! !
!SiteIdentifierTest categoriesFor: #testCaseInsensitiveMatch!public!testing! !
!SiteIdentifierTest categoriesFor: #testCurrentUrl!public!testing! !
!SiteIdentifierTest categoriesFor: #testHostMismatch!public!testing! !
!SiteIdentifierTest categoriesFor: #testIPMismatch!public!testing! !
!SiteIdentifierTest categoriesFor: #testMatch!public!testing! !
!SiteIdentifierTest categoriesFor: #testPortMismatch!public!testing! !

