"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #GRObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRObjectTest guid: (GUID fromString: '{857d7e78-930a-493a-9005-bc6db4b0cf29}')!
GRObjectTest comment: ''!
!GRObjectTest categoriesForClass!Grease-Tests-Core! !
!GRObjectTest methodsFor!

testError	"Make sure #error: signals a subclass of GRError."	self 		should: [ GRObject new error: 'oh dear' ]		raise: GRError.	self 		should: [ GRObject error: 'oh dear' ]		raise: GRError!

testInitialize	"Make sure #initialize is called on #new and that calling 'super initialize' doesn't error."	self assert: GRObjectStub new foo!

testRespondsTo	self assert: (GRObject new respondsTo: #greaseString).	self deny: (GRObject new respondsTo: #makeMeASandwich)! !
!GRObjectTest categoriesFor: #testError!public!tests! !
!GRObjectTest categoriesFor: #testInitialize!public!tests! !
!GRObjectTest categoriesFor: #testRespondsTo!public!tests! !

