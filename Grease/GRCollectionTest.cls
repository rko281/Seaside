"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #GRCollectionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRCollectionTest guid: (GUID fromString: '{be1b8d1c-0ff8-4844-a87a-58a47a7ddd9c}')!
GRCollectionTest comment: ''!
!GRCollectionTest categoriesForClass!Grease-Tests-Core! !
!GRCollectionTest methodsFor!

allowsDuplicateValues	"Does the tested collection allow storage of duplicate (equal) values."	self subclassResponsibility!

arbitraryCollection	"An general collection for testing. It should meet the needs of #duplicateElement,	#excludedElement, #includedElement, and so on where appropriate.  Make sure the	duplicated element doesn't end up being in the first or last position both before	and after sorting."		^ self collectionClass withAll: #(4 3 1 2 3 5)!

assert: aCollection sortedWith: sortBlock	"Assert that aCollection is correctly sorted according to sortBlock."	1 to: aCollection size -1 do: [ :index |		| a b |		a := aCollection at: index.		b := aCollection at: index + 1.		self assert: ((sortBlock value: a value: b) or: [ (sortBlock value: b value: a) not ]) ]!

assert: responseCollection validSequencedNewResponseFrom: receiverCollection	"Assert that the returned object is, in fact a new object, and that it is	of a valid response class for the tested collection."		self deny: responseCollection == receiverCollection.	self assert: (self isValidNewSequencedResponseClass: responseCollection class)!

collectionClass	"Answer the collection class that is being tested."	self subclassResponsibility!

duplicateElement	"Answer an element that appears multiple times in #arbitraryCollection."	^ 3!

emptyCollection	"Answer an empty collection."	^ self collectionClass new!

excludedElement	"Answer an element that does not appear in #arbitraryCollection."	^ 19!

includedElement	"Answer a (non-duplicate) element that does appear in #arbitraryCollection."	^ 2!

isExtensible	"Answer whether the tested Collection implements the <extensibleCollection>	protocol as defined in ANSI 5.7.5	."			self subclassResponsibility!

isInitializable	"Answer whether the tested Collection implements the <initializableCollection factory>	protocol as defined in ANSI 5.7.23."		self subclassResponsibility!

isValidNewSequencedResponseClass: aClass	"Answer whether aClass is a valid return type for methods that return a new sequenced	collection. These are methods such as #copyFrom:to: or #reverse, which are	defined by ANSI for most classes to return the same class as the receiver.	However, for Interval (and maybe other cases), ANSI specifies that the response	may be any <sequencedReadableCollection>."		^ aClass == self collectionClass or: [		aClass allSuperclasses includes: SequenceableCollection ]!

testAny	| collection |	collection := self arbitraryCollection.		self assert: ((self valuesOf: collection) includes: collection any)!

testEmptyAny	| collection |	collection := self emptyCollection.		self should: [ (self valuesOf: collection) includes: collection any ] raise: Error!

testIsCollection	self assert: self arbitraryCollection isCollection!

testNoneSatisfy	| excluded included |	excluded := self excludedElement.	self assert: (self arbitraryCollection noneSatisfy: [ :each | each = excluded ]).	included := self includedElement.	self deny: (self arbitraryCollection noneSatisfy: [ :each | each = included ]).	self assert: (self emptyCollection noneSatisfy: [ :each | true ])!

testNotEmpty		self assert: self arbitraryCollection notEmpty.	self deny:  self emptyCollection notEmpty.	self assert: self arbitraryCollection notEmpty.	self deny:  self emptyCollection notEmpty!

testSorted	| sorted collection |	collection := self arbitraryCollection.	sorted := collection sorted.	self assert: sorted validSequencedNewResponseFrom: collection.	self assert: sorted sortedWith: [ :a :b | a <= b ].		sorted := collection sorted: [ :a :b | a > b ].	self assert: sorted validSequencedNewResponseFrom: collection.	self assert: sorted sortedWith: [ :a :b | a > b ]!

valuesOf: aCollection	"Answer the values of aCollecion. Dictionary tests override this."		^ aCollection! !
!GRCollectionTest categoriesFor: #allowsDuplicateValues!configuration!public! !
!GRCollectionTest categoriesFor: #arbitraryCollection!configuration!public! !
!GRCollectionTest categoriesFor: #assert:sortedWith:!asserting!public! !
!GRCollectionTest categoriesFor: #assert:validSequencedNewResponseFrom:!asserting!public! !
!GRCollectionTest categoriesFor: #collectionClass!configuration!public! !
!GRCollectionTest categoriesFor: #duplicateElement!configuration!public! !
!GRCollectionTest categoriesFor: #emptyCollection!configuration!public! !
!GRCollectionTest categoriesFor: #excludedElement!configuration!public! !
!GRCollectionTest categoriesFor: #includedElement!configuration!public! !
!GRCollectionTest categoriesFor: #isExtensible!public!testing/ansi! !
!GRCollectionTest categoriesFor: #isInitializable!public!testing/ansi! !
!GRCollectionTest categoriesFor: #isValidNewSequencedResponseClass:!configuration!public! !
!GRCollectionTest categoriesFor: #testAny!public!tests! !
!GRCollectionTest categoriesFor: #testEmptyAny!public!tests! !
!GRCollectionTest categoriesFor: #testIsCollection!public!tests! !
!GRCollectionTest categoriesFor: #testNoneSatisfy!public!tests! !
!GRCollectionTest categoriesFor: #testNotEmpty!public!tests! !
!GRCollectionTest categoriesFor: #testSorted!public!tests! !
!GRCollectionTest categoriesFor: #valuesOf:!private! !

!GRCollectionTest class methodsFor!

isAbstract	^ self name = #GRCollectionTest! !
!GRCollectionTest class categoriesFor: #isAbstract!public!testing! !

