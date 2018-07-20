"Filed out from Dolphin Smalltalk 7"!

GRSmallDictionaryTest subclass: #GROrderedMultiMapTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GROrderedMultiMapTest guid: (GUID fromString: '{201622bb-4ffe-4839-9daa-f78927d4df61}')!
GROrderedMultiMapTest comment: ''!
!GROrderedMultiMapTest categoriesForClass!Grease-Tests-Core! !
!GROrderedMultiMapTest methodsFor!

allowsDuplicateKeys	^ true!

collectionClass	^ GROrderedMultiMap!

testAllAt	self assert: (collection allAt: '1') = #().	collection at: '1' add: 'foo'.	collection at: '1' add: 'bar'.	self assert: (collection allAt: '1') = #( 'foo' 'bar' )!

testAllAtIfAbsent	self assert: (collection allAt: '1' ifAbsent: [ 'absent' ]) = 'absent'.	collection at: '1' add: 'foo'.	collection at: '1' add: 'bar'.	self assert: (collection allAt: '1' ifAbsent: [ 'absent' ]) = #( 'foo' 'bar' )!

testAtAdd	collection at: '1' add: 'foo'.	collection at: '1' add: 'bar'.	self assertAssociations: (Array with: '1' -> 'foo' with: '1' -> 'bar')! !
!GROrderedMultiMapTest categoriesFor: #allowsDuplicateKeys!configuration!public! !
!GROrderedMultiMapTest categoriesFor: #collectionClass!configuration!public! !
!GROrderedMultiMapTest categoriesFor: #testAllAt!public!tests/accessing! !
!GROrderedMultiMapTest categoriesFor: #testAllAtIfAbsent!public!tests/accessing! !
!GROrderedMultiMapTest categoriesFor: #testAtAdd!public!tests/accessing! !

!GROrderedMultiMapTest class methodsFor!

shouldInheritSelectors	^ true! !
!GROrderedMultiMapTest class categoriesFor: #shouldInheritSelectors!public!testing! !

