"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAKeyGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAKeyGeneratorTest guid: (GUID fromString: '{85f3bdcf-4d0c-4171-8ff4-5755368a1e1b}')!

WAKeyGeneratorTest comment: ''!

!WAKeyGeneratorTest categoriesForClass!Seaside-Tests-Core-Utilities! !

!WAKeyGeneratorTest methodsFor!

count	^ 512!

testUnique	| collection id |	collection := Set new: self count.	self count timesRepeat: [		id := WAKeyGenerator current keyOfLength: 48.		self			deny: (collection includes: id)			description: 'This is extremely unlikely to fail, if it does repeatedly then there is something wrong with the random generator.'.		collection add: id ]! !

!WAKeyGeneratorTest categoriesForMethods!
count!accessing!public! !
testUnique!public!tests! !
!

