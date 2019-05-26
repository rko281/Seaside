"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQAutocompleterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAutocompleterTest guid: (GUID fromString: '{72607644-e52a-4dfc-afbc-47f829cc1b64}')!
JQAutocompleterTest comment: ''!
!JQAutocompleterTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQAutocompleterTest methodsFor!

testActions	self		assert: ((self jQuery: 'input') autocomplete close)		equals: self function , '("input").autocomplete("close")'.	self		assert: ((self jQuery: 'input') autocomplete search: 'something')		equals: self function , '("input").autocomplete("search","something")'! !
!JQAutocompleterTest categoriesFor: #testActions!public!tests! !

