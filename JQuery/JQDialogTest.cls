"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQDialogTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDialogTest guid: (GUID fromString: '{d8e427fa-6c29-436c-afb0-b4882725a831}')!

JQDialogTest comment: ''!

!JQDialogTest categoriesForClass!JQuery-Tests-UI-Unit! !

!JQDialogTest methodsFor!

testActions	self		assert: ((self jQuery: 'div') dialog close)		equals: self function , '("div").dialog("close")'.	self		assert: ((self jQuery: 'div') dialog isOpen)		equals: self function , '("div").dialog("isOpen")'.	self		assert: ((self jQuery: 'div') dialog moveToTop)		equals: self function , '("div").dialog("moveToTop")'.	self		assert: ((self jQuery: 'div') dialog open)		equals: self function , '("div").dialog("open")'! !

!JQDialogTest categoriesForMethods!
testActions!public!tests! !
!

