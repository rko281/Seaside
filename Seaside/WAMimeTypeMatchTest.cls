"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAMimeTypeMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMimeTypeMatchTest guid: (GUID fromString: '{fce9d262-5c53-41db-b4b5-1bc28aa68aa4}')!
WAMimeTypeMatchTest comment: ''!
!WAMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAMimeTypeMatchTest methodsFor!

testFromMimeType	| mimeType |	mimeType := WAMimeTypeMatch fromString: 'application/xml'.	self assert: mimeType class = WAFullMimeTypeMatch.		mimeType := WAMimeTypeMatch fromString: 'application/*'.	self assert: mimeType class = WAMainMimeTypeMatch.		mimeType := WAMimeTypeMatch fromString: '*/xml'.	self assert: mimeType class = WASubMimeTypeMatch.		mimeType := WAMimeTypeMatch fromString: '*/*'.	self assert: mimeType class = WAWildcardMimeTypeMatch! !
!WAMimeTypeMatchTest categoriesFor: #testFromMimeType!public!tests! !

