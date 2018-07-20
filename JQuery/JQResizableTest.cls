"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQResizableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQResizableTest guid: (GUID fromString: '{9d7bf487-ab08-4810-9c13-9531cd09cbd5}')!
JQResizableTest comment: ''!
!JQResizableTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQResizableTest methodsFor!

testActions	self		assert: ((self jQuery: 'img') resizable disable)		equals: self function , '("img").resizable("disable")'.	self		assert: ((self jQuery: 'img') resizable enable)		equals: self function , '("img").resizable("enable")'.	self		assert: ((self jQuery: 'img') resizable destroy)		equals: self function , '("img").resizable("destroy")'		! !
!JQResizableTest categoriesFor: #testActions!public!tests! !

