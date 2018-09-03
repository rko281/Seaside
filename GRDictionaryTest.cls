"Filed out from Dolphin Smalltalk 7"!

GRAbstractDictionaryTest subclass: #GRDictionaryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDictionaryTest guid: (GUID fromString: '{0a0c76fe-4dd2-4d62-8996-63828ee1d7e5}')!
GRDictionaryTest comment: ''!
!GRDictionaryTest categoriesForClass!Grease-Tests-Core! !
!GRDictionaryTest methodsFor!

collectionClass	^ Dictionary!

createArbitraryAssociations	^ OrderedCollection new		add: #c -> 3;		add: #a -> 1;		add: #b -> 2;		add: #e -> 1;		add: #d -> 4;		yourself!

isKey: anObject equivalentTo: anotherObject	^ anObject = anotherObject! !
!GRDictionaryTest categoriesFor: #collectionClass!configuration!public! !
!GRDictionaryTest categoriesFor: #createArbitraryAssociations!configuration!public! !
!GRDictionaryTest categoriesFor: #isKey:equivalentTo:!configuration!public! !

