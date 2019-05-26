"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAMimeTypeMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMimeTypeMatchTest guid: (GUID fromString: '{34a25a23-58d3-4a37-99ff-5d0d4feeac1a}')!
WAMimeTypeMatchTest comment: ''!
!WAMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAMimeTypeMatchTest methodsFor!

testFromMimeType	| mimeType |	mimeType := WAMimeTypeMatch fromString: 'application/xml'.	self assert: mimeType class = WAFullMimeTypeMatch.		mimeType := WAMimeTypeMatch fromString: 'application/*'.	self assert: mimeType class = WAMainMimeTypeMatch.		mimeType := WAMimeTypeMatch fromString: '*/xml'.	self assert: mimeType class = WASubMimeTypeMatch.		mimeType := WAMimeTypeMatch fromString: '*/*'.	self assert: mimeType class = WAWildcardMimeTypeMatch! !
!WAMimeTypeMatchTest categoriesFor: #testFromMimeType!public!tests! !

