"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQSortableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSortableTest guid: (GUID fromString: '{68b75885-1729-4858-a1d8-a46d9c3e0959}')!
JQSortableTest comment: ''!
!JQSortableTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQSortableTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') sortable cancel)		equals: self function , '("ul").sortable("cancel")'.	self		assert: ((self jQuery: 'ul') sortable refresh)		equals: self function , '("ul").sortable("refresh")'.	self		assert: ((self jQuery: 'ul') sortable refreshPositions)		equals: self function , '("ul").sortable("refreshPositions")'! !
!JQSortableTest categoriesFor: #testActions!public!tests! !

