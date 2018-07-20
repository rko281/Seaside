"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQSelectableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSelectableTest guid: (GUID fromString: '{cfbbb6e2-0716-43ef-878d-3f073ade96c2}')!
JQSelectableTest comment: ''!
!JQSelectableTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQSelectableTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') selectable refresh)		equals: self function , '("ul").selectable("refresh")'! !
!JQSelectableTest categoriesFor: #testActions!public!tests! !

