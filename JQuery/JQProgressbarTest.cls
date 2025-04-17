"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQProgressbarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQProgressbarTest guid: (GUID fromString: '{c0315e2c-4455-463f-8d96-88990973d078}')!

JQProgressbarTest comment: ''!

!JQProgressbarTest categoriesForClass!Unit! !

!JQProgressbarTest methodsFor!

testActions	self		assert: ((self jQuery: 'div') progressbar getValue)		equals: self function , '("div").progressbar("value")'.	self		assert: ((self jQuery: 'div') progressbar setValue: 4)		equals: self function , '("div").progressbar("value",4)'! !

!JQProgressbarTest categoriesForMethods!
testActions!public!tests! !
!

