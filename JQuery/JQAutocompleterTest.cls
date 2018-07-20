"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQAutocompleterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAutocompleterTest guid: (GUID fromString: '{bb9ef5ea-3eb4-4805-8b92-aab689f6ec5a}')!
JQAutocompleterTest comment: ''!
!JQAutocompleterTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQAutocompleterTest methodsFor!

testActions	self		assert: ((self jQuery: 'input') autocomplete close)		equals: self function , '("input").autocomplete("close")'.	self		assert: ((self jQuery: 'input') autocomplete search: 'something')		equals: self function , '("input").autocomplete("search","something")'! !
!JQAutocompleterTest categoriesFor: #testActions!public!tests! !

