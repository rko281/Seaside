"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQDroppableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQDroppableTest guid: (GUID fromString: '{2328c292-22c4-457b-8b02-10ef2518912a}')!

JQDroppableTest comment: ''!

!JQDroppableTest categoriesForClass!JQuery-Tests-UI-Unit! !

!JQDroppableTest methodsFor!

testEvents	self		assert: ((self jQuery: 'div') droppable onActivate: 1)		equals: self function , '("div").droppable({"activate":function(){1}})'.	self		assert: ((self jQuery: 'div') droppable onDeactivate: 2)		equals: self function , '("div").droppable({"deactivate":function(){2}})'.	self		assert: ((self jQuery: 'div') droppable onDrop: 3)		equals: self function , '("div").droppable({"drop":function(){3}})'.	self		assert: ((self jQuery: 'div') droppable onOut: 4)		equals: self function , '("div").droppable({"out":function(){4}})'.	self		assert: ((self jQuery: 'div') droppable onOver: 5)		equals: self function , '("div").droppable({"over":function(){5}})'! !

!JQDroppableTest categoriesForMethods!
testEvents!public!tests! !
!

