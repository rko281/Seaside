"Filed out from Dolphin Smalltalk 7"!

SpTestCase subclass: #SpStringUtilitiesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpStringUtilitiesTest guid: (GUID fromString: '{ee3ad4de-5485-4c74-a669-a6d213c9a6e7}')!
SpStringUtilitiesTest comment: ''!
!SpStringUtilitiesTest categoriesForClass!Unclassified! !
!SpStringUtilitiesTest methodsFor!

testPrevIndexOfAnElementFromTo

	| string |
	string := 'Dolphin Smalltalk'.
	self assert: (SpStringUtilities prevIndexOf: $m from: string size to: 1 in: string) = 10.
	self assert: (SpStringUtilities prevIndexOf: Character space from: string size to: 1 in: string) = 8!

testTokenizationBasedOnSeparatorString

	self assert: (SpStringUtilities tokensBasedOn: '/' in: 'hello/portable/world')  = (Array with: 'hello' with: 'portable'  with: 'world')!

testTrimBlanks

	self assert: (SpStringUtilities trimBlanksFrom:  ' hello portable world   ')  = 'hello portable world'! !
!SpStringUtilitiesTest categoriesFor: #testPrevIndexOfAnElementFromTo!public! !
!SpStringUtilitiesTest categoriesFor: #testTokenizationBasedOnSeparatorString!public! !
!SpStringUtilitiesTest categoriesFor: #testTrimBlanks!public! !

