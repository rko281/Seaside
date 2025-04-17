"Filed out from Dolphin Smalltalk"!

WAAbstractHtmlElementTest subclass: #WAMetaElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMetaElementTest guid: (GUID fromString: '{3d5d1227-c18c-49e6-b01b-b490cb1c02a0}')!

WAMetaElementTest comment: ''!

!WAMetaElementTest categoriesForClass!Document! !

!WAMetaElementTest methodsFor!

testLeftToRight	self		assert: [ :root | root meta beLeftToRight ]		gives: '<meta dir="LTR"/>'! !

!WAMetaElementTest categoriesForMethods!
testLeftToRight!public!tests! !
!

