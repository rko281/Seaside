"Filed out from Dolphin Smalltalk"!

WAMatch subclass: #WACompositeMimeTypeMatch
	instanceVariableNames: 'matches'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACompositeMimeTypeMatch guid: (GUID fromString: '{c92b3358-c82b-4409-8fb4-1db0adb1d56d}')!

WACompositeMimeTypeMatch comment: ''!

!WACompositeMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !

!WACompositeMimeTypeMatch methodsFor!

initializeWithMatches: aCollection	self initialize.	matches := aCollection!

matches: aMimeType	^ matches anySatisfy: [ :each | each matches: aMimeType ]!

priorityFor: aMimeType	| matched |	matched := matches select: [ :each | each matches: aMimeType ].	matched isEmpty		ifTrue: [ ^ -1 ].	matched sort: [ :a :b |		a priority <= b priority ].	^ matched last priority!

seasideMimeType	"We don't know which one to take."	^ nil! !

!WACompositeMimeTypeMatch categoriesForMethods!
initializeWithMatches:!initialization!public! !
matches:!public!testing! !
priorityFor:!accessing!public! !
seasideMimeType!accessing!public! !
!

!WACompositeMimeTypeMatch class methodsFor!

matches: aCollection	^ self basicNew initializeWithMatches: aCollection! !

!WACompositeMimeTypeMatch class categoriesForMethods!
matches:!instance creation!public! !
!

