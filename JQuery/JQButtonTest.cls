"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQButtonTest guid: (GUID fromString: '{6c503b0d-7eb8-4728-a76b-5538258392a8}')!
JQButtonTest comment: ''!
!JQButtonTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQButtonTest methodsFor!

testIcons	self		assert: ((self jQuery: 'input') button primaryIcon: 'foo')		equals: self function , '("input").button({"icons":{"primary":"foo"}})'.	self		assert: ((self jQuery: 'input') button primaryIcon: 'foo'; secondaryIcon: 'bar')		equals: self function , '("input").button({"icons":{"primary":"foo","secondary":"bar"}})'!

testOptions	self		assert: ((self jQuery: 'input') button icons: Dictionary new)		equals: self function , '("input").button({"icons":{}})'.	self		assert: ((self jQuery: 'input') button label: 'Hello')		equals: self function , '("input").button({"label":"Hello"})'.	self		assert: ((self jQuery: 'input') button text: 'Something')		equals: self function , '("input").button({"text":"Something"})'.	self		assert: ((self jQuery: 'input') button disabled: true)		equals: self function , '("input").button({"disabled":true})'! !
!JQButtonTest categoriesFor: #testIcons!public!tests! !
!JQButtonTest categoriesFor: #testOptions!public!tests! !

