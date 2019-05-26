"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQTabsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQTabsTest guid: (GUID fromString: '{15bf48ec-6440-436c-9715-051d7f5fb015}')!
JQTabsTest comment: ''!
!JQTabsTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQTabsTest methodsFor!

testActions	self		assert: ((self jQuery: 'ul') tabs disable: 2)		equals: self function , '("ul").tabs("disable",2)'.	self		assert: ((self jQuery: 'ul') tabs enable: 3)		equals: self function , '("ul").tabs("enable",3)'.	self		assert: ((self jQuery: 'ul') tabs refresh)		equals: self function , '("ul").tabs("refresh")'.	self		assert: ((self jQuery: 'ul') tabs load: 5)		equals: self function , '("ul").tabs("load",5)'! !
!JQTabsTest categoriesFor: #testActions!public!tests! !

