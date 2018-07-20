"Filed out from Dolphin Smalltalk 7"!

WAAbstractHtmlElementTest subclass: #WAMetaElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMetaElementTest guid: (GUID fromString: '{51d95ee6-435b-4984-8519-f7e1d4500310}')!
WAMetaElementTest comment: ''!
!WAMetaElementTest categoriesForClass!Seaside-Tests-Core-Document! !
!WAMetaElementTest methodsFor!

testLeftToRight	self		assert: [ :root | root meta beLeftToRight ]		gives: '<meta dir="LTR"/>'! !
!WAMetaElementTest categoriesFor: #testLeftToRight!public!tests! !

