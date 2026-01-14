"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WASortedAccepts
	instanceVariableNames: 'accepts'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASortedAccepts guid: (GUID fromString: '{05ca714b-c679-462c-8ca8-bf8ca56cb970}')!

WASortedAccepts comment: ''!

!WASortedAccepts categoriesForClass!Seaside-REST-Core-Route! !

!WASortedAccepts methodsFor!

acceptsDo: aOneArgumentBlock	| sortedKeys |	sortedKeys := accepts keys sorted: [ :a :b | a > b ].	sortedKeys do: [ :each |		aOneArgumentBlock value: (accepts allAt: each) ]!

initializeWithAccepts: aCollectionOfAccepts	self initialize.	accepts := GROrderedMultiMap2 new.	aCollectionOfAccepts isNil ifFalse: [		aCollectionOfAccepts do: [ :each |			accepts at: each quality add: each value ] ]!

isEmpty	^ accepts isEmpty! !

!WASortedAccepts categoriesForMethods!
acceptsDo:!initialization!public! !
initializeWithAccepts:!initialization!public! !
isEmpty!public!testing! !
!

!WASortedAccepts class methodsFor!

accepts: aCollectionOfAccepts	^ self basicNew initializeWithAccepts: aCollectionOfAccepts! !

!WASortedAccepts class categoriesForMethods!
accepts:!instance creation!public! !
!

