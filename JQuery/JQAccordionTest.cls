"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQAccordionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAccordionTest guid: (GUID fromString: '{a2453b31-59e3-49cd-bef4-4bd56e094fdd}')!

JQAccordionTest comment: ''!

!JQAccordionTest categoriesForClass!Unit! !

!JQAccordionTest methodsFor!

testActions	self		assert: ((self jQuery: 'img') accordion option:'active' put: 3)		equals: self function , '("img").accordion("option","active",3)'! !

!JQAccordionTest categoriesForMethods!
testActions!public!tests! !
!

