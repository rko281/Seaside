"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQAccordionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAccordionTest guid: (GUID fromString: '{2578a584-ad79-4ee0-a397-49d70efa86c1}')!

JQAccordionTest comment: ''!

!JQAccordionTest categoriesForClass!JQuery-Tests-UI-Unit! !

!JQAccordionTest methodsFor!

testActions	self		assert: ((self jQuery: 'img') accordion option:'active' put: 3)		equals: self function , '("img").accordion("option","active",3)'! !

!JQAccordionTest categoriesForMethods!
testActions!public!tests! !
!

