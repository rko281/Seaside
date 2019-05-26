"Filed out from Dolphin Smalltalk 7"!

WAAbstractHtmlElementTest subclass: #WAMetaElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMetaElementTest guid: (GUID fromString: '{d07eb801-774b-491c-a77d-ab4ab516ad68}')!
WAMetaElementTest comment: ''!
!WAMetaElementTest categoriesForClass!Seaside-Tests-Core-Document! !
!WAMetaElementTest methodsFor!

testLeftToRight	self		assert: [ :root | root meta beLeftToRight ]		gives: '<meta dir="LTR"/>'! !
!WAMetaElementTest categoriesFor: #testLeftToRight!public!tests! !

