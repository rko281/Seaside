"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQAutocompleterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAutocompleterTest guid: (GUID fromString: '{85f7f7d6-dfb8-4186-b998-f8f7554b715f}')!

JQAutocompleterTest comment: ''!

!JQAutocompleterTest categoriesForClass!Unit! !

!JQAutocompleterTest methodsFor!

testActions	self		assert: ((self jQuery: 'input') autocomplete close)		equals: self function , '("input").autocomplete("close")'.	self		assert: ((self jQuery: 'input') autocomplete search: 'something')		equals: self function , '("input").autocomplete("search","something")'! !

!JQAutocompleterTest categoriesForMethods!
testActions!public!tests! !
!

