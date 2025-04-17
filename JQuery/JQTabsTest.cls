"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQTabsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQTabsTest guid: (GUID fromString: '{3392547a-4fb0-410a-ab11-a210953466e5}')!

JQTabsTest comment: ''!

!JQTabsTest categoriesForClass!Unit! !

!JQTabsTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') tabs disable: 2)		equals: self function , '("ul").tabs("disable",2)'.	self		assert: ((self jQuery: 'ul') tabs enable: 3)		equals: self function , '("ul").tabs("enable",3)'.	self		assert: ((self jQuery: 'ul') tabs refresh)		equals: self function , '("ul").tabs("refresh")'.	self		assert: ((self jQuery: 'ul') tabs load: 5)		equals: self function , '("ul").tabs("load",5)'! !

!JQTabsTest categoriesForMethods!
testActions!public!tests! !
!

