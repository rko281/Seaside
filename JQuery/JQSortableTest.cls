"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQSortableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQSortableTest guid: (GUID fromString: '{e12cc404-a824-4bcb-9695-35a7cc51a324}')!

JQSortableTest comment: ''!

!JQSortableTest categoriesForClass!Unit! !

!JQSortableTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') sortable cancel)		equals: self function , '("ul").sortable("cancel")'.	self		assert: ((self jQuery: 'ul') sortable refresh)		equals: self function , '("ul").sortable("refresh")'.	self		assert: ((self jQuery: 'ul') sortable refreshPositions)		equals: self function , '("ul").sortable("refreshPositions")'! !

!JQSortableTest categoriesForMethods!
testActions!public!tests! !
!

