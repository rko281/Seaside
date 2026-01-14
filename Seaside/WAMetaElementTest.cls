"Filed out from Dolphin Smalltalk"!

WAAbstractHtmlElementTest subclass: #WAMetaElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMetaElementTest guid: (GUID fromString: '{66c91ff9-c292-4b86-b53d-f4f2463ac537}')!

WAMetaElementTest comment: ''!

!WAMetaElementTest categoriesForClass!Seaside-Tests-Core-Document! !

!WAMetaElementTest methodsFor!

testLeftToRight	self		assert: [ :root | root meta beLeftToRight ]		gives: '<meta dir="LTR"/>'! !

!WAMetaElementTest categoriesForMethods!
testLeftToRight!public!tests! !
!

