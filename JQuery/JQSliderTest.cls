"Filed out from Dolphin Smalltalk"!

JQueryUiTest subclass: #JQSliderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQSliderTest guid: (GUID fromString: '{37e60b0c-b666-4d9f-b512-afa93f490240}')!

JQSliderTest comment: ''!

!JQSliderTest categoriesForClass!Unit! !

!JQSliderTest methodsFor!

testActions	self		assert: ((self jQuery: 'span') slider setValue: 1)		equals: self function , '("span").slider("value",1)'.	self		assert: ((self jQuery: 'span') slider setValue: 2 at: 3)		equals: self function , '("span").slider("values",2,3)'.	self		assert: ((self jQuery: 'span') slider getValue)		equals: self function , '("span").slider("value")'.	self		assert: ((self jQuery: 'span') slider getValueAt: 4)		equals: self function , '("span").slider("values",4)'!

testOptions	self		assert: ((self jQuery: 'span') slider value: 0)		equals: self function , '("span").slider({"value":0})'! !

!JQSliderTest categoriesForMethods!
testActions!public!tests! !
testOptions!public!tests! !
!

