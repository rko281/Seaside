"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQSelectableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSelectableTest guid: (GUID fromString: '{2f4fbc7e-b569-4025-a329-dec0314d8216}')!
JQSelectableTest comment: ''!
!JQSelectableTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQSelectableTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') selectable refresh)		equals: self function , '("ul").selectable("refresh")'! !
!JQSelectableTest categoriesFor: #testActions!public!tests! !

