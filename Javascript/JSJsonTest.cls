"Filed out from Dolphin Smalltalk"!

JSObjectTest subclass: #JSJsonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJsonTest guid: (GUID fromString: '{9b568ca2-c926-4264-bc65-da1f43db85de}')!

JSJsonTest comment: ''!

!JSJsonTest categoriesForClass!Javascript-Tests-Core! !

!JSJsonTest methodsFor!

json	^ JSJson context: self renderContext!

testParse	self 		assert: (self json parse: '[1,2]')		equals: 'JSON.parse("[1,2]")'.	self 		assert: (self json parse: '[1,2]' reviver: 'return null')		equals: 'JSON.parse("[1,2]",function(){return null})'!

testStringify	self 		assert: (self json stringify: self mock)		equals: 'JSON.stringify(mock)'.	self 		assert: (self json stringify: self mock space: 4)		equals: 'JSON.stringify(mock,4)'.	self 		assert: (self json stringify: self mock replacer: #())		equals: 'JSON.stringify(mock,[])'.	self 		assert: (self json stringify: self mock replacer: #() space: ' ')		equals: 'JSON.stringify(mock,[]," ")'! !

!JSJsonTest categoriesForMethods!
json!accessing!public! !
testParse!public!tests! !
testStringify!public!tests! !
!

