"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQAccordionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAccordionTest guid: (GUID fromString: '{ccfb71ad-1098-48d3-8dba-35d88690a965}')!
JQAccordionTest comment: ''!
!JQAccordionTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQAccordionTest methodsFor!

testActions	self		assert: ((self jQuery: 'img') accordion option:'active' put: 3)		equals: self function , '("img").accordion("option","active",3)'! !
!JQAccordionTest categoriesFor: #testActions!public!tests! !

