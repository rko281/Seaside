"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQResizableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQResizableTest guid: (GUID fromString: '{9cc96dc0-e9cb-43a7-acd5-8aa2e778de4a}')!

JQResizableTest comment: ''!

!JQResizableTest categoriesForClass!Unit! !

!JQResizableTest methodsFor!

testActions	self		assert: ((self jQuery: 'img') resizable disable)		equals: self function , '("img").resizable("disable")'.	self		assert: ((self jQuery: 'img') resizable enable)		equals: self function , '("img").resizable("enable")'.	self		assert: ((self jQuery: 'img') resizable destroy)		equals: self function , '("img").resizable("destroy")'! !

!JQResizableTest categoriesForMethods!
testActions!public!tests! !
!

