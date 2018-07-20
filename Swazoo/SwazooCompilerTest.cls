"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SwazooCompilerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooCompilerTest guid: (GUID fromString: '{9161ca74-0fe4-4046-9ec9-21316378a52b}')!
SwazooCompilerTest comment: ''!
!SwazooCompilerTest categoriesForClass!Unclassified! !
!SwazooCompilerTest methodsFor!

testEvaluate
	self assert: (SwazooCompiler evaluate: '1 + 2 * 3') = 9!

testEvaluateReceiver
	self assert: (SwazooCompiler evaluate: 'self + 2 * 3' receiver: 1) = 9! !
!SwazooCompilerTest categoriesFor: #testEvaluate!public!running! !
!SwazooCompilerTest categoriesFor: #testEvaluateReceiver!public!running! !

