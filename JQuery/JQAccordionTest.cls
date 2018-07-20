"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQAccordionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAccordionTest guid: (GUID fromString: '{bdc253d6-a740-4ecc-a813-3ffd144212b4}')!
JQAccordionTest comment: ''!
!JQAccordionTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQAccordionTest methodsFor!

testActions	self		assert: ((self jQuery: 'img') accordion option:'active' put: 3)		equals: self function , '("img").accordion("option","active",3)'! !
!JQAccordionTest categoriesFor: #testActions!public!tests! !

