"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQSelectableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQSelectableTest guid: (GUID fromString: '{ddaf19b7-74de-4b26-ac12-6b2cf47f2601}')!

JQSelectableTest comment: ''!

!JQSelectableTest categoriesForClass!JQuery-Tests-UI-Unit! !

!JQSelectableTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') selectable refresh)		equals: self function , '("ul").selectable("refresh")'! !

!JQSelectableTest categoriesForMethods!
testActions!public!tests! !
!

