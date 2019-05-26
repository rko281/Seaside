"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAKeyGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAKeyGeneratorTest guid: (GUID fromString: '{a44507a3-68df-4c86-bd2f-fde8e080d713}')!
WAKeyGeneratorTest comment: ''!
!WAKeyGeneratorTest categoriesForClass!Seaside-Tests-Core-Utilities! !
!WAKeyGeneratorTest methodsFor!

count	^ 512!

testUnique	| collection id |	collection := Set new: self count.	self count timesRepeat: [		id := WAKeyGenerator current keyOfLength: 48.		self			deny: (collection includes: id)			description: 'This is extremely unlikely to fail, if it does repeatedly then there is something wrong with the random generator.'.		collection add: id ]! !
!WAKeyGeneratorTest categoriesFor: #count!accessing!public! !
!WAKeyGeneratorTest categoriesFor: #testUnique!public!tests! !

