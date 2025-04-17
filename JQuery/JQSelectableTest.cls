"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQSelectableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQSelectableTest guid: (GUID fromString: '{5afabf12-5c79-47cb-9810-b21db23a92ee}')!

JQSelectableTest comment: ''!

!JQSelectableTest categoriesForClass!Unit! !

!JQSelectableTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') selectable refresh)		equals: self function , '("ul").selectable("refresh")'! !

!JQSelectableTest categoriesForMethods!
testActions!public!tests! !
!

