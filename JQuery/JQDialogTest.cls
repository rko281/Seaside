"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQDialogTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDialogTest guid: (GUID fromString: '{fcfe04e3-b05d-4658-b702-8d3f799e023e}')!

JQDialogTest comment: ''!

!JQDialogTest categoriesForClass!Unit! !

!JQDialogTest methodsFor!

testActions	self		assert: ((self jQuery: 'div') dialog close)		equals: self function , '("div").dialog("close")'.	self		assert: ((self jQuery: 'div') dialog isOpen)		equals: self function , '("div").dialog("isOpen")'.	self		assert: ((self jQuery: 'div') dialog moveToTop)		equals: self function , '("div").dialog("moveToTop")'.	self		assert: ((self jQuery: 'div') dialog open)		equals: self function , '("div").dialog("open")'! !

!JQDialogTest categoriesForMethods!
testActions!public!tests! !
!

