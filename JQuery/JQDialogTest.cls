"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQDialogTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQDialogTest guid: (GUID fromString: '{eb1b065d-8e7d-447c-bc42-6a5721cdffee}')!
JQDialogTest comment: ''!
!JQDialogTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQDialogTest methodsFor!

testActions	self		assert: ((self jQuery: 'div') dialog close)		equals: self function , '("div").dialog("close")'.	self		assert: ((self jQuery: 'div') dialog isOpen)		equals: self function , '("div").dialog("isOpen")'.	self		assert: ((self jQuery: 'div') dialog moveToTop)		equals: self function , '("div").dialog("moveToTop")'.	self		assert: ((self jQuery: 'div') dialog open)		equals: self function , '("div").dialog("open")'! !
!JQDialogTest categoriesFor: #testActions!public!tests! !

