"Filed out from Dolphin Smalltalk 7"!

GRAbstractDictionaryTest subclass: #GRIdentityDictionaryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRIdentityDictionaryTest guid: (GUID fromString: '{abdea811-f0ee-404e-b0bb-bba053dd6d9e}')!
GRIdentityDictionaryTest comment: ''!
!GRIdentityDictionaryTest categoriesForClass!Grease-Tests-Core! !
!GRIdentityDictionaryTest methodsFor!

collectionClass	^ IdentityDictionary!

createArbitraryAssociations	^ OrderedCollection new		add: 'c' -> 3;		add: 'a' -> 1;		add: 'b' -> 2;		add: 'd' -> 1;		add: 'b' copy -> 4;		yourself!

isKey: anObject equivalentTo: anotherObject	^ anObject == anotherObject! !
!GRIdentityDictionaryTest categoriesFor: #collectionClass!configuration!public! !
!GRIdentityDictionaryTest categoriesFor: #createArbitraryAssociations!configuration!public! !
!GRIdentityDictionaryTest categoriesFor: #isKey:equivalentTo:!configuration!public! !

