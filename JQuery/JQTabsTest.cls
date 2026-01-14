"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQTabsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQTabsTest guid: (GUID fromString: '{0f6ebc9e-e67a-4b98-92f9-59f83ce84025}')!

JQTabsTest comment: ''!

!JQTabsTest categoriesForClass!JQuery-Tests-UI-Unit! !

!JQTabsTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') tabs disable: 2)		equals: self function , '("ul").tabs("disable",2)'.	self		assert: ((self jQuery: 'ul') tabs enable: 3)		equals: self function , '("ul").tabs("enable",3)'.	self		assert: ((self jQuery: 'ul') tabs refresh)		equals: self function , '("ul").tabs("refresh")'.	self		assert: ((self jQuery: 'ul') tabs load: 5)		equals: self function , '("ul").tabs("load",5)'! !

!JQTabsTest categoriesForMethods!
testActions!public!tests! !
!

