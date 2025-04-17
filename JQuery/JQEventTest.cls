"Filed out from Dolphin Smalltalk"!

JQueryTest subclass: #JQEventTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQEventTest guid: (GUID fromString: '{4dc33423-971c-42b3-b2c8-e6a996036d99}')!

JQEventTest comment: ''!

!JQEventTest categoriesForClass!Unit! !

!JQEventTest methodsFor!

clickEvent	^ self jQuery event: 'click'!

newEvent	^ self jQuery event!

testCurrentTarget	self		assert: self newEvent currentTarget		equals: 'arguments[0].currentTarget'.	self		assert: self clickEvent currentTarget		equals: self function , '.Event("click").currentTarget'!

testData	self		assert: self newEvent data		equals: 'arguments[0].data'.	self		assert: self clickEvent data		equals: self function , '.Event("click").data'!

testIsDefaultPrevented	self		assert: self newEvent isDefaultPrevented		equals: 'arguments[0].isDefaultPrevented()'.	self		assert: self clickEvent isDefaultPrevented		equals: self function , '.Event("click").isDefaultPrevented()'!

testIsImmediatePropagationStopped	self		assert: self newEvent isImmediatePropagationStopped		equals: 'arguments[0].isImmediatePropagationStopped()'.	self		assert: self clickEvent isImmediatePropagationStopped		equals: self function , '.Event("click").isImmediatePropagationStopped()'!

testIsPropagationStopped	self		assert: self newEvent isPropagationStopped		equals: 'arguments[0].isPropagationStopped()'.	self		assert: self clickEvent isPropagationStopped		equals: self function , '.Event("click").isPropagationStopped()'!

testNamespace	self		assert: self newEvent namespace		equals: 'arguments[0].namespace'.	self		assert: self clickEvent namespace		equals: self function , '.Event("click").namespace'!

testPageX	self		assert: self newEvent pageX		equals: 'arguments[0].pageX'.	self		assert: self clickEvent pageX		equals: self function , '.Event("click").pageX'!

testPageY	self		assert: self newEvent pageY		equals: 'arguments[0].pageY'.	self		assert: self clickEvent pageY		equals: self function , '.Event("click").pageY'!

testPlain	self		assert: self newEvent		equals: 'arguments[0]'.	self		assert: self clickEvent		equals: self function , '.Event("click")'!

testPreventDefault	self		assert: self newEvent preventDefault		equals: 'arguments[0].preventDefault()'.	self		assert: self clickEvent preventDefault		equals: self function , '.Event("click").preventDefault()'!

testRelatedTarget	self		assert: self newEvent relatedTarget		equals: 'arguments[0].relatedTarget'.	self		assert: self clickEvent relatedTarget		equals: self function , '.Event("click").relatedTarget'!

testResult	self		assert: self newEvent result		equals: 'arguments[0].result'.	self		assert: self clickEvent result		equals: self function , '.Event("click").result'!

testStopImmediatePropagation	self		assert: self newEvent stopImmediatePropagation		equals: 'arguments[0].stopImmediatePropagation()'.	self		assert: self clickEvent stopImmediatePropagation		equals: self function , '.Event("click").stopImmediatePropagation()'!

testStopPropagation	self		assert: self newEvent stopPropagation		equals: 'arguments[0].stopPropagation()'.	self		assert: self clickEvent stopPropagation		equals: self function , '.Event("click").stopPropagation()'!

testTarget	self		assert: self newEvent target		equals: 'arguments[0].target'.	self		assert: self clickEvent target		equals: self function , '.Event("click").target'!

testTimeStamp	self		assert: self newEvent timeStamp		equals: 'arguments[0].timeStamp'.	self		assert: self clickEvent timeStamp		equals: self function , '.Event("click").timeStamp'!

testType	self		assert: self newEvent type		equals: 'arguments[0].type'.	self		assert: self clickEvent type		equals: self function , '.Event("click").type'! !

!JQEventTest categoriesForMethods!
clickEvent!accessing!public! !
newEvent!accessing!public! !
testCurrentTarget!public!tests/accessing! !
testData!public!tests/accessing! !
testIsDefaultPrevented!public!tests/testing! !
testIsImmediatePropagationStopped!public!tests/testing! !
testIsPropagationStopped!public!tests/testing! !
testNamespace!public!tests/accessing! !
testPageX!public!tests/accessing! !
testPageY!public!tests/accessing! !
testPlain!public!tests! !
testPreventDefault!public!tests/actions! !
testRelatedTarget!public!tests/accessing! !
testResult!public!tests/accessing! !
testStopImmediatePropagation!public!tests/actions! !
testStopPropagation!public!tests/actions! !
testTarget!public!tests/accessing! !
testTimeStamp!public!tests/accessing! !
testType!public!tests/accessing! !
!

