"Filed out from Dolphin Smalltalk"!

JSObjectTest subclass: #JSDecorationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSDecorationTest guid: (GUID fromString: '{abeea8d4-9e5a-48cb-ac7f-c6f0066240e8}')!

JSDecorationTest comment: ''!

!JSDecorationTest categoriesForClass!Javascript-Tests-Core! !

!JSDecorationTest methodsFor!

testAccess	self		assert: (self mock access: 'foo')		equals: 'mock.foo'!

testAlias	| mock |	mock := self mock.	mock alias: 'foo'.	self assert: mock equals: 'foo'.	mock alias: 'bar'; call: 'zork'.	self assert: mock equals: 'bar.zork()'!

testApply	self		assert: (self mock apply: #())		equals: 'mock()'.	self		assert: (self mock apply: #(1))		equals: 'mock(1)'.	self		assert: (self mock apply: #(1 true))		equals: 'mock(1,true)'!

testAssign	self		assert: (self mock assign: 1)		equals: 'mock=1'!

testAssignLocalTo	self		assert: (self mock assignLocalTo: 'x')		equals: 'var x=mock'!

testAssignTo	self		assert: (self mock assignTo: 'x')		equals: 'x=mock'!

testBinary	self		assert: (self mock & false)		equals: 'mock&&false'.	self		assert: (self mock | 1)		equals: 'mock||1'!

testCall	self		assert: (self mock call: 'foo')		equals: 'mock.foo()'.	self		assert: (self mock call: nil)		equals: 'mock()'.	self		assert: (self mock call: '')		equals: 'mock()'!

testCallWith	self		assert: (self mock call: 'foo' with: 1)		equals: 'mock.foo(1)'.	self		assert: (self mock call: nil with: 1)		equals: 'mock(1)'.	self		assert: (self mock call: '' with: 1)		equals: 'mock(1)'!

testCallWithArguments	self		assert: (self mock call: 'foo' withArguments: #(1 2 3 4 5))		equals: 'mock.foo(1,2,3,4,5)'.	self		assert: (self mock call: nil withArguments: #(1 2 3 4 5))		equals: 'mock(1,2,3,4,5)'.	self		assert: (self mock call: '' withArguments: #(1 2 3 4 5))		equals: 'mock(1,2,3,4,5)'!

testCallWithWith	self		assert: (self mock call: 'foo' with: 1 with: 2)		equals: 'mock.foo(1,2)'.	self		assert: (self mock call: nil with: 1 with: 2)		equals: 'mock(1,2)'.	self		assert: (self mock call: '' with: 1 with: 2)		equals: 'mock(1,2)'!

testCallWithWithWith	self		assert: (self mock call: 'foo' with: 1 with: 2 with: 3)		equals: 'mock.foo(1,2,3)'.	self		assert: (self mock call: nil with: 1 with: 2 with: 3)		equals: 'mock(1,2,3)'.	self		assert: (self mock call: '' with: 1 with: 2 with: 3)		equals: 'mock(1,2,3)'!

testConcatenate	self		assert: (self mock , 2 , 3)		equals: 'mock;2;3'.	self		assert: (self mock , nil , self mock)		equals: 'mock;null;mock'!

testCondition	self		assert: (self mock condition: true)		equals: 'if(true){mock}'.	self		assert: (self mock condition: false)		equals: 'if(false){mock}'!

testConditionElse	self		assert: (self mock condition: true else: false)		equals: 'if(true){mock}else{false}'.	self		assert: (self mock condition: false else: true)		equals: 'if(false){mock}else{true}'!

testConfirm	self		assert: (self mock confirm: 'Sure?')		equals: 'if(confirm("Sure?")){mock}'!

testCreate	self		assert: self mock create		equals: 'new mock'!

testInterval	self		assert: (self mock interval: 2 seconds)		equals: 'setInterval(function(){mock},2000)'!

testNot	self		assert: self mock not		equals: '!!mock'.	self		assert: self mock not not		equals: '!!!!mock'!

testProperty	self		assert: (self mock property: 'foo')		equals: 'mock["foo"]'.	self		assert: (self mock property: 123)		equals: 'mock[123]'.	self		assert: (self mock property: 'foo'; assign: 'bar')		equals: 'mock["foo"]="bar"'!

testReturn	self		assert: (self mock return: 1)		equals: 'mock;return 1'!

testThenElse	| mock |	mock := self mock.	mock then: 1.	self assert: mock equals: '(mock?1:null)'.	mock := self mock.	mock then: 1 else: 2.	self assert: mock equals: '(mock?1:2)'!

testTimeout	| mock |	mock := self mock.	mock setTimeout: 123.	self assert: mock equals: 'setTimeout(function(){mock},123)'! !

!JSDecorationTest categoriesForMethods!
testAccess!public!tests! !
testAlias!public!tests! !
testApply!public!tests! !
testAssign!public!tests! !
testAssignLocalTo!public!tests! !
testAssignTo!public!tests! !
testBinary!public!tests! !
testCall!public!tests! !
testCallWith!public!tests! !
testCallWithArguments!public!tests! !
testCallWithWith!public!tests! !
testCallWithWithWith!public!tests! !
testConcatenate!public!tests! !
testCondition!public!tests! !
testConditionElse!public!tests! !
testConfirm!public!tests! !
testCreate!public!tests! !
testInterval!public!tests! !
testNot!public!tests! !
testProperty!public!tests! !
testReturn!public!tests! !
testThenElse!public!tests! !
testTimeout!public!tests! !
!

