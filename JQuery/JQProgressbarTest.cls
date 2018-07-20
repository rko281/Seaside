"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQProgressbarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQProgressbarTest guid: (GUID fromString: '{10e7e019-4c0c-4521-848b-7b6c8afee3e5}')!
JQProgressbarTest comment: ''!
!JQProgressbarTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQProgressbarTest methodsFor!

testActions	self		assert: ((self jQuery: 'div') progressbar getValue)		equals: self function , '("div").progressbar("value")'.	self		assert: ((self jQuery: 'div') progressbar setValue: 4)		equals: self function , '("div").progressbar("value",4)'! !
!JQProgressbarTest categoriesFor: #testActions!public!tests! !

