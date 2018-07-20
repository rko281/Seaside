"Filed out from Dolphin Smalltalk 7"!

WAUrlTest subclass: #WADolphinUrlTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADolphinUrlTest guid: (GUID fromString: '{793bbbe9-c430-4949-8d09-6721e1518103}')!
WADolphinUrlTest comment: ''!
!WADolphinUrlTest categoriesForClass!Seaside-Tests-Core-HTTP! !
!WADolphinUrlTest methodsFor!

asString: aCollectionOfIntegers

	"The superclass implementation returns a Utf8String, not a single-byte String (which is the intention here)"

	^AnsiString fromByteArray: aCollectionOfIntegers asByteArray! !
!WADolphinUrlTest categoriesFor: #asString:!public! !

!WADolphinUrlTest class methodsFor!

testSelectors

	^#(#testDecodedWith)! !
!WADolphinUrlTest class categoriesFor: #testSelectors!public! !

