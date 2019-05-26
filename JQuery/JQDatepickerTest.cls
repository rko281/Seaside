"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQDatepickerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQDatepickerTest guid: (GUID fromString: '{1f587526-966c-484c-bf5b-9f8825ef5441}')!
JQDatepickerTest comment: ''!
!JQDatepickerTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQDatepickerTest methodsFor!

testActions	self		assert: ((self jQuery: 'input') datepicker getDate)		equals: self function , '("input").datepicker("getDate")'.	self		assert: ((self jQuery: 'input') datepicker hide)		equals: self function , '("input").datepicker("hide")'.	self		assert: ((self jQuery: 'input') datepicker isDisabled)		equals: self function , '("input").datepicker("isDisabled")'.	self		assert: ((self jQuery: 'input') datepicker setDate: (Date year: 2010 month: 6 day: 11))		equals: self function , '("input").datepicker("setDate",new Date(2010,5,11))'.	self		assert: ((self jQuery: 'input') datepicker show)		equals: self function , '("input").datepicker("show")'! !
!JQDatepickerTest categoriesFor: #testActions!public!tests! !

