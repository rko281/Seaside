﻿"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQDroppableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDroppableTest guid: (GUID fromString: '{c4325625-a911-4f8b-9963-7964a2637c23}')!

JQDroppableTest comment: ''!

!JQDroppableTest categoriesForClass!Unit! !

!JQDroppableTest methodsFor!

testEvents	self		assert: ((self jQuery: 'div') droppable onActivate: 1)		equals: self function , '("div").droppable({"activate":function(){1}})'.	self		assert: ((self jQuery: 'div') droppable onDeactivate: 2)		equals: self function , '("div").droppable({"deactivate":function(){2}})'.	self		assert: ((self jQuery: 'div') droppable onDrop: 3)		equals: self function , '("div").droppable({"drop":function(){3}})'.	self		assert: ((self jQuery: 'div') droppable onOut: 4)		equals: self function , '("div").droppable({"out":function(){4}})'.	self		assert: ((self jQuery: 'div') droppable onOver: 5)		equals: self function , '("div").droppable({"over":function(){5}})'! !

!JQDroppableTest categoriesForMethods!
testEvents!public!tests! !
!

