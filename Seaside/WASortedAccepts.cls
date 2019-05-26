"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WASortedAccepts
	instanceVariableNames: 'accepts'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASortedAccepts guid: (GUID fromString: '{37059c57-3e46-42d8-b7b3-fb069e60ee8b}')!
WASortedAccepts comment: ''!
!WASortedAccepts categoriesForClass!Seaside-REST-Core-Route! !
!WASortedAccepts methodsFor!

acceptsDo: aOneArgumentBlock	| sortedKeys |	sortedKeys := accepts keys sorted: [ :a :b | a > b ].	sortedKeys do: [ :each |		aOneArgumentBlock value: (accepts allAt: each) ]!

initializeWithAccepts: aCollectionOfAccepts	self initialize.	accepts := GROrderedMultiMap2 new.	aCollectionOfAccepts isNil ifFalse: [		aCollectionOfAccepts do: [ :each |			accepts at: each quality add: each value ] ]!

isEmpty	^ accepts isEmpty! !
!WASortedAccepts categoriesFor: #acceptsDo:!initialization!public! !
!WASortedAccepts categoriesFor: #initializeWithAccepts:!initialization!public! !
!WASortedAccepts categoriesFor: #isEmpty!public!testing! !

!WASortedAccepts class methodsFor!

accepts: aCollectionOfAccepts	^ self basicNew initializeWithAccepts: aCollectionOfAccepts! !
!WASortedAccepts class categoriesFor: #accepts:!instance creation!public! !

