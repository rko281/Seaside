"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQSortableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSortableTest guid: (GUID fromString: '{2d820c55-6985-431f-bb45-8fc3cde66396}')!
JQSortableTest comment: ''!
!JQSortableTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQSortableTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') sortable cancel)		equals: self function , '("ul").sortable("cancel")'.	self		assert: ((self jQuery: 'ul') sortable refresh)		equals: self function , '("ul").sortable("refresh")'.	self		assert: ((self jQuery: 'ul') sortable refreshPositions)		equals: self function , '("ul").sortable("refreshPositions")'! !
!JQSortableTest categoriesFor: #testActions!public!tests! !

