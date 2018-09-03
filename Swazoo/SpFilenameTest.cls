"Filed out from Dolphin Smalltalk 7"!

SpTestCase subclass: #SpFilenameTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpFilenameTest guid: (GUID fromString: '{b9ca8f0f-1287-4873-8a00-43ed5b201e83}')!
SpFilenameTest comment: ''!
!SpFilenameTest categoriesForClass!Unclassified! !
!SpFilenameTest methodsFor!

testExists

	| spFilename |
	spFilename := SpFilename named: SessionManager current imageFileName.
	self assert: spFilename exists!

testLastModified

	| spFilename |
	spFilename := SpFilename named: SessionManager current imageFileName.
	self assert: spFilename lastModified asSeconds = spFilename lastModified asSeconds.
	self assert: spFilename lastModified = spFilename lastModified.
	self assert: spFilename lastModified asTime  = spFilename lastModified asTime.
	self assert: spFilename lastModified asTime asMilliseconds = spFilename lastModified asTime asMilliseconds.!

testReadStream

	| spFilename reader |
	spFilename := SpFilename named: SessionManager current imageFileName.
	reader := spFilename readStream.
	self assert: reader next ~=nil
	
	! !
!SpFilenameTest categoriesFor: #testExists!public! !
!SpFilenameTest categoriesFor: #testLastModified!public! !
!SpFilenameTest categoriesFor: #testReadStream!public! !

