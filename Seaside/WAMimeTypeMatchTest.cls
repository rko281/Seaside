"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAMimeTypeMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMimeTypeMatchTest guid: (GUID fromString: '{b4250660-efc8-4819-9a88-bd34db6a7795}')!

WAMimeTypeMatchTest comment: ''!

!WAMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAMimeTypeMatchTest methodsFor!

testFromMimeType	| mimeType |	mimeType := WAMimeTypeMatch fromString: 'application/xml'.	self assert: mimeType class = WAFullMimeTypeMatch.		mimeType := WAMimeTypeMatch fromString: 'application/*'.	self assert: mimeType class = WAMainMimeTypeMatch.		mimeType := WAMimeTypeMatch fromString: '*/xml'.	self assert: mimeType class = WASubMimeTypeMatch.		mimeType := WAMimeTypeMatch fromString: '*/*'.	self assert: mimeType class = WAWildcardMimeTypeMatch! !

!WAMimeTypeMatchTest categoriesForMethods!
testFromMimeType!public!tests! !
!

