"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQProgressbarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQProgressbarTest guid: (GUID fromString: '{8995d70d-ce65-43ca-a13f-5abc9c8b896a}')!

JQProgressbarTest comment: ''!

!JQProgressbarTest categoriesForClass!JQuery-Tests-UI-Unit! !

!JQProgressbarTest methodsFor!

testActions	self		assert: ((self jQuery: 'div') progressbar getValue)		equals: self function , '("div").progressbar("value")'.	self		assert: ((self jQuery: 'div') progressbar setValue: 4)		equals: self function , '("div").progressbar("value",4)'! !

!JQProgressbarTest categoriesForMethods!
testActions!public!tests! !
!

