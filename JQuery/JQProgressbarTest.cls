"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQProgressbarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQProgressbarTest guid: (GUID fromString: '{38d0f83f-c740-45fd-9940-17638dacfe6c}')!
JQProgressbarTest comment: ''!
!JQProgressbarTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQProgressbarTest methodsFor!

testActions	self		assert: ((self jQuery: 'div') progressbar getValue)		equals: self function , '("div").progressbar("value")'.	self		assert: ((self jQuery: 'div') progressbar setValue: 4)		equals: self function , '("div").progressbar("value",4)'! !
!JQProgressbarTest categoriesFor: #testActions!public!tests! !

