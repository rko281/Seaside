"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQAutocompleterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAutocompleterTest guid: (GUID fromString: '{fc68a394-791b-46a3-ab4e-70d4cc66514a}')!

JQAutocompleterTest comment: ''!

!JQAutocompleterTest categoriesForClass!JQuery-Tests-UI-Unit! !

!JQAutocompleterTest methodsFor!

testActions	self		assert: ((self jQuery: 'input') autocomplete close)		equals: self function , '("input").autocomplete("close")'.	self		assert: ((self jQuery: 'input') autocomplete search: 'something')		equals: self function , '("input").autocomplete("search","something")'! !

!JQAutocompleterTest categoriesForMethods!
testActions!public!tests! !
!

