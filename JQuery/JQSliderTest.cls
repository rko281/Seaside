"Filed out from Dolphin Smalltalk 7"!

JQueryUiTest subclass: #JQSliderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQSliderTest guid: (GUID fromString: '{42249c8a-4fd2-4955-8e25-55b03ef3708b}')!
JQSliderTest comment: ''!
!JQSliderTest categoriesForClass!JQuery-Tests-UI-Unit! !
!JQSliderTest methodsFor!

testActions	self		assert: ((self jQuery: 'span') slider setValue: 1)		equals: self function , '("span").slider("value",1)'.	self		assert: ((self jQuery: 'span') slider setValue: 2 at: 3)		equals: self function , '("span").slider("values",2,3)'.	self		assert: ((self jQuery: 'span') slider getValue)		equals: self function , '("span").slider("value")'.	self		assert: ((self jQuery: 'span') slider getValueAt: 4)		equals: self function , '("span").slider("values",4)'!

testOptions	self		assert: ((self jQuery: 'span') slider value: 0)		equals: self function , '("span").slider({"value":0})'! !
!JQSliderTest categoriesFor: #testActions!public!tests! !
!JQSliderTest categoriesFor: #testOptions!public!tests! !

