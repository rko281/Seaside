"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAPartialContinuationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPartialContinuationTest guid: (GUID fromString: '{9aad2752-5de7-406d-a20f-0cced563db57}')!
WAPartialContinuationTest comment: ''!
!WAPartialContinuationTest categoriesForClass!Seaside-Tests-Pharo-Continuation! !
!WAPartialContinuationTest methodsFor!

callcc: aBlock
	^WAPartialContinuation currentDo: aBlock!

mark: aBlock

	| home |

	home := Processor activeProcess topFrame.
	^ aBlock on: WAMarkerRequest do: [ :request | request resume: home ]!

markDiscardingResultOf: aBlock
	| home |

	home := Processor activeProcess topFrame.

	aBlock on: WAMarkerRequest do: [ :request | request resume: home ]!

testEnsure	| kk count |		" before evaluation, ensure blocks should be unwound "	count := 0.	self mark: [ 2 * (self callcc: [ :cc | kk := cc. 0 ]) ].	self assert: (self mark: [		[ kk value: 3 ]			ensure: [ count := count + 1 ] ])				= 6.	self assert: count = 1.		" ensure blocks within the continuation should be unwound as well "	count := 0.	self mark: [ [ 2 * (self callcc: [ :cc | kk := cc. 0 ]) ] ensure: [ count := count + 1 ] ].	self assert: count = 1.	self assert: (kk value: 2) = 4.	self assert: count = 2.	self assert: (kk value: 3) = 6.	self assert: count = 3!

testMarkerOnValue	| kk captured seen |	captured := false.	seen := false.	self	shouldnt: [			self markDiscardingResultOf: [ | value |				value := self callcc: [ :cc | kk := cc. captured := true ].				seen := true.				value ] ]		raise: Error.			self assert: captured.	self assert: seen.	captured := false.	seen := false.	"Make sure the marker method is not included in the continuation and the continuation returns directly	into the marker method."	self assert: (self mark: [ kk value: 123. 456 ]) = 123.	self deny: captured.	self assert: seen!

testNestedEvaluation	| k1 k2 |	self assert: (self mark: [ 		2 * (self callcc: [ :c1 | 			k1 := c1. 			3 * (self callcc: [ :c2 |				k2 := c2.				4 ]) ]) ])					= 24.						self assert: (self mark: [		k1 value: 5 ])			= 10.	self assert: (self mark: [		k2 value: 5 ])			= 30!

testNoMarkerOnCall	| captured seen |	captured := false.	seen := false.	self		should: [			self callcc: [ :cc | captured := true ].			seen := true ]		raise: Error.			self deny: captured.	self deny: seen!

testNoMarkerOnValue	| kk captured seen |	captured := false.	seen := false.	self	shouldnt: [			self markDiscardingResultOf: [				| value |				value := self callcc: [ :cc | kk := cc. captured := true ].				seen := true.				value ] ]		raise: Error.			self assert: captured.	self assert: seen.	captured := false.	seen := false.	"Make sure the marker method was not included in the continuation"	self assert: (kk value: 123) = 123.	self deny: captured.	self assert: seen!

testReentrant	| kk |	self assert: (self mark: [ 		2 * (self callcc: [ :cc | 			kk := cc. 2 ]) ]) 				= 4.		self assert: (self mark: [		kk value: 3 ]) 			= 6.	self assert: (self mark: [		kk value: 4 ]) 			= 8.	self assert: (self mark: [		kk value: 5 ]) 			= 10!

testSimple	self assert: (self mark: [ self callcc: [ :cc | cc value: true ] ])! !
!WAPartialContinuationTest categoriesFor: #callcc:!private! !
!WAPartialContinuationTest categoriesFor: #mark:!private! !
!WAPartialContinuationTest categoriesFor: #markDiscardingResultOf:!private! !
!WAPartialContinuationTest categoriesFor: #testEnsure!public!tests! !
!WAPartialContinuationTest categoriesFor: #testMarkerOnValue!public!tests! !
!WAPartialContinuationTest categoriesFor: #testNestedEvaluation!public!tests! !
!WAPartialContinuationTest categoriesFor: #testNoMarkerOnCall!public!tests! !
!WAPartialContinuationTest categoriesFor: #testNoMarkerOnValue!public!tests! !
!WAPartialContinuationTest categoriesFor: #testReentrant!public!tests! !
!WAPartialContinuationTest categoriesFor: #testSimple!public!tests! !

