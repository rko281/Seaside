"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAContinuationTest
	instanceVariableNames: 'tmp tmp2'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAContinuationTest guid: (GUID fromString: '{3806e8a1-a230-420d-952a-be767827487f}')!

WAContinuationTest comment: ''!

!WAContinuationTest categoriesForClass!Seaside-Tests-Pharo-Continuation! !

!WAContinuationTest methodsFor!

callcc: aBlock	^ WAContinuation currentDo: aBlock!

testBlockEscape	| x |	tmp := 0.	x := [ tmp := tmp + 1. tmp2 value ].	self callcc: [ :cc | tmp2 := cc. x value ].	tmp2 := [ ].	x value.	self assert: tmp = 2!

testBlockTemps	| y |	#(1 2 3) do: [ :i |		| x |		x := i.		tmp ifNil: [ tmp2 := (self callcc: [ :cc | tmp := cc. [ :q | ] ]) ].		tmp2 value: x.		x := 17 ].	y := (self callcc: [ :cc | tmp value: cc. 42 ]).	self assert: y = 1!

testBlockVars	| continuation |	tmp := 0.	tmp := (self callcc: [ :cc | continuation := cc. 0 ]) + tmp.	tmp2 isNil		ifFalse: [ tmp2 value ]		ifTrue: [			#(1 2 3) do: [ :i |				self callcc: [ :cc | tmp2 := cc. continuation value: i ] ] ].	self assert: tmp = 6!

testComprehension	"What should this print out?	| yin yang |	yin := [ :x | Transcript cr. x ] value: Continuation current.	yang := [ :x | Transcript nextPut: $*. x ] value: Continuation current.	yin value: yang"!

testMethodTemps	| i continuation |	i := 0.	i := i + (self callcc: [ :cc | continuation := cc. 1 ]).	self assert: i ~= 3.	i = 2 ifFalse: [ continuation value: 2 ]!

testReentrant	| assoc |	assoc := self callcc: [ :cc | cc -> 0 ].	assoc value: assoc value + 1.	self assert: assoc value ~= 5.	assoc value = 4		ifFalse: [ assoc key value: assoc ]!

testSimpleCallCC	| x continuation |	x := self callcc: [ :cc | continuation := cc. false ].	x ifFalse: [ continuation value: true ].	self assert: x!

testSimpleCallCCWithPossibleArgument	| x continuation |	x := self callcc: [ :cc | continuation := cc. false ].	x ifFalse: [ continuation valueWithPossibleArguments: (Array with:  true) ].	self assert: x!

testSimplestCallCC	| x |	x := self callcc: [ :cc | cc value: true ].	self assert: x! !

!WAContinuationTest categoriesForMethods!
callcc:!public!utilities! !
testBlockEscape!public!tests! !
testBlockTemps!public!tests! !
testBlockVars!public!tests! !
testComprehension!public!tests! !
testMethodTemps!public!tests! !
testReentrant!public!tests! !
testSimpleCallCC!public!tests! !
testSimpleCallCCWithPossibleArgument!public!tests! !
testSimplestCallCC!public!tests! !
!

