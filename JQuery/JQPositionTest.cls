"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQPositionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQPositionTest guid: (GUID fromString: '{68eb0476-2195-4099-820e-178df2457cb5}')!

JQPositionTest comment: ''!

!JQPositionTest categoriesForClass!Unit! !

!JQPositionTest methodsFor!

testOptions	self		assert: ((self jQuery: 'div') positioned at: 'right')		equals: self function , '("div").position({"at":"right"})'.	self		assert: ((self jQuery: 'div') positioned bgiframe: false)		equals: self function , '("div").position({"bgiframe":false})'.	self		assert: ((self jQuery: 'div') positioned collision: 'flip fit')		equals: self function , '("div").position({"collision":"flip fit"})'.	self		assert: ((self jQuery: 'div') positioned my: 'top+10 center-20')		equals: self function , '("div").position({"my":"top+10 center-20"})'.	self		assert: ((self jQuery: 'div') positioned of: '#id')		equals: self function , '("div").position({"of":"#id"})'! !

!JQPositionTest categoriesForMethods!
testOptions!public!tests! !
!

