"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQSortableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQSortableTest guid: (GUID fromString: '{75e8a6ef-cf2c-4969-a251-d82acdd0c355}')!

JQSortableTest comment: ''!

!JQSortableTest categoriesForClass!JQuery-Tests-UI-Unit! !

!JQSortableTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') sortable cancel)		equals: self function , '("ul").sortable("cancel")'.	self		assert: ((self jQuery: 'ul') sortable refresh)		equals: self function , '("ul").sortable("refresh")'.	self		assert: ((self jQuery: 'ul') sortable refreshPositions)		equals: self function , '("ul").sortable("refreshPositions")'! !

!JQSortableTest categoriesForMethods!
testActions!public!tests! !
!

