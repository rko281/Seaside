"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #JSJsonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSJsonTest guid: (GUID fromString: '{bc427bf3-fc41-420c-9e81-d9ca9acc5aaf}')!
JSJsonTest comment: ''!
!JSJsonTest categoriesForClass!Javascript-Tests-Core! !
!JSJsonTest methodsFor!

json	^ JSJson context: self renderContext!

testParse	self 		assert: (self json parse: '[1,2]')		equals: 'JSON.parse("[1,2]")'.	self 		assert: (self json parse: '[1,2]' reviver: 'return null')		equals: 'JSON.parse("[1,2]",function(){return null})'!

testStringify	self 		assert: (self json stringify: self mock)		equals: 'JSON.stringify(mock)'.	self 		assert: (self json stringify: self mock space: 4)		equals: 'JSON.stringify(mock,4)'.	self 		assert: (self json stringify: self mock replacer: #())		equals: 'JSON.stringify(mock,[])'.	self 		assert: (self json stringify: self mock replacer: #() space: ' ')		equals: 'JSON.stringify(mock,[]," ")'! !
!JSJsonTest categoriesFor: #json!accessing!public! !
!JSJsonTest categoriesFor: #testParse!public!tests! !
!JSJsonTest categoriesFor: #testStringify!public!tests! !

