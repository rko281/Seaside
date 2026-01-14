"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQButtonTest guid: (GUID fromString: '{b2105626-4296-484e-84d5-31e5aed23fa0}')!

JQButtonTest comment: ''!

!JQButtonTest categoriesForClass!JQuery-Tests-UI-Unit! !

!JQButtonTest methodsFor!

testIcons	self		assert: ((self jQuery: 'input') button primaryIcon: 'foo')		equals: self function , '("input").button({"icons":{"primary":"foo"}})'.	self		assert: ((self jQuery: 'input') button primaryIcon: 'foo'; secondaryIcon: 'bar')		equals: self function , '("input").button({"icons":{"primary":"foo","secondary":"bar"}})'!

testOptions	self		assert: ((self jQuery: 'input') button icons: Dictionary new)		equals: self function , '("input").button({"icons":{}})'.	self		assert: ((self jQuery: 'input') button label: 'Hello')		equals: self function , '("input").button({"label":"Hello"})'.	self		assert: ((self jQuery: 'input') button text: 'Something')		equals: self function , '("input").button({"text":"Something"})'.	self		assert: ((self jQuery: 'input') button disabled: true)		equals: self function , '("input").button({"disabled":true})'! !

!JQButtonTest categoriesForMethods!
testIcons!public!tests! !
testOptions!public!tests! !
!

