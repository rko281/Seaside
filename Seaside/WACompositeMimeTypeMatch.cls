"Filed out from Dolphin Smalltalk"!

WAMatch subclass: #WACompositeMimeTypeMatch
	instanceVariableNames: 'matches'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACompositeMimeTypeMatch guid: (GUID fromString: '{2629ce5b-8ac1-401a-92c7-ff6301663906}')!

WACompositeMimeTypeMatch comment: ''!

!WACompositeMimeTypeMatch categoriesForClass!Route! !

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

