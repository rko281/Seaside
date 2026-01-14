"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQResizableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQResizableTest guid: (GUID fromString: '{17fccdb3-0d71-40d6-9811-dec7e12b87ce}')!

JQResizableTest comment: ''!

!JQResizableTest categoriesForClass!JQuery-Tests-UI-Unit! !

!JQResizableTest methodsFor!

testActions	self		assert: ((self jQuery: 'img') resizable disable)		equals: self function , '("img").resizable("disable")'.	self		assert: ((self jQuery: 'img') resizable enable)		equals: self function , '("img").resizable("enable")'.	self		assert: ((self jQuery: 'img') resizable destroy)		equals: self function , '("img").resizable("destroy")'! !

!JQResizableTest categoriesForMethods!
testActions!public!tests! !
!

