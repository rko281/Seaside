"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQPositionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQPositionTest guid: (GUID fromString: '{00cbffa6-7ba0-48b6-99b5-6cd4cfea85b6}')!
JQPositionTest comment: ''!
!JQPositionTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQPositionTest methodsFor!

testOptions	self		assert: ((self jQuery: 'div') positioned at: 'right')		equals: self function , '("div").position({"at":"right"})'.	self		assert: ((self jQuery: 'div') positioned bgiframe: false)		equals: self function , '("div").position({"bgiframe":false})'.	self		assert: ((self jQuery: 'div') positioned collision: 'flip fit')		equals: self function , '("div").position({"collision":"flip fit"})'.	self		assert: ((self jQuery: 'div') positioned my: 'top+10 center-20')		equals: self function , '("div").position({"my":"top+10 center-20"})'.	self		assert: ((self jQuery: 'div') positioned of: '#id')		equals: self function , '("div").position({"of":"#id"})'! !
!JQPositionTest categoriesFor: #testOptions!public!tests! !

