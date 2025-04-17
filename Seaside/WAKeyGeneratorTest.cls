"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAKeyGeneratorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAKeyGeneratorTest guid: (GUID fromString: '{9609b538-22e4-4010-b686-e38f2e338ea2}')!

WAKeyGeneratorTest comment: ''!

!WAKeyGeneratorTest categoriesForClass!Utilities! !

!WAKeyGeneratorTest methodsFor!

count	^ 512!

testUnique	| collection id |	collection := Set new: self count.	self count timesRepeat: [		id := WAKeyGenerator current keyOfLength: 48.		self			deny: (collection includes: id)			description: 'This is extremely unlikely to fail, if it does repeatedly then there is something wrong with the random generator.'.		collection add: id ]! !

!WAKeyGeneratorTest categoriesForMethods!
count!accessing!public! !
testUnique!public!tests! !
!

