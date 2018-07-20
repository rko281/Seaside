"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #JSDecorationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSDecorationTest guid: (GUID fromString: '{cd2d9c1a-766b-4853-8a5d-c19e1cca1f20}')!
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

testTimeout	| mock |	mock := self mock.	mock timeout: 123.	self assert: mock equals: 'setTimeout(function(){mock},123)'! !
!JSDecorationTest categoriesFor: #testAccess!public!tests! !
!JSDecorationTest categoriesFor: #testAlias!public!tests! !
!JSDecorationTest categoriesFor: #testApply!public!tests! !
!JSDecorationTest categoriesFor: #testAssign!public!tests! !
!JSDecorationTest categoriesFor: #testAssignLocalTo!public!tests! !
!JSDecorationTest categoriesFor: #testAssignTo!public!tests! !
!JSDecorationTest categoriesFor: #testBinary!public!tests! !
!JSDecorationTest categoriesFor: #testCall!public!tests! !
!JSDecorationTest categoriesFor: #testCallWith!public!tests! !
!JSDecorationTest categoriesFor: #testCallWithArguments!public!tests! !
!JSDecorationTest categoriesFor: #testCallWithWith!public!tests! !
!JSDecorationTest categoriesFor: #testCallWithWithWith!public!tests! !
!JSDecorationTest categoriesFor: #testConcatenate!public!tests! !
!JSDecorationTest categoriesFor: #testCondition!public!tests! !
!JSDecorationTest categoriesFor: #testConditionElse!public!tests! !
!JSDecorationTest categoriesFor: #testConfirm!public!tests! !
!JSDecorationTest categoriesFor: #testCreate!public!tests! !
!JSDecorationTest categoriesFor: #testInterval!public!tests! !
!JSDecorationTest categoriesFor: #testNot!public!tests! !
!JSDecorationTest categoriesFor: #testProperty!public!tests! !
!JSDecorationTest categoriesFor: #testReturn!public!tests! !
!JSDecorationTest categoriesFor: #testThenElse!public!tests! !
!JSDecorationTest categoriesFor: #testTimeout!public!tests! !

