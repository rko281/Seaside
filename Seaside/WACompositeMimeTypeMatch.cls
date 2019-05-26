"Filed out from Dolphin Smalltalk 7"!

WAMatch subclass: #WACompositeMimeTypeMatch
	instanceVariableNames: 'matches'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACompositeMimeTypeMatch guid: (GUID fromString: '{ba40581c-935b-4d1c-96ce-97ab573ff977}')!
WACompositeMimeTypeMatch comment: ''!
!WACompositeMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !
!WACompositeMimeTypeMatch methodsFor!

initializeWithMatches: aCollection	self initialize.	matches := aCollection!

matches: aMimeType	^ matches anySatisfy: [ :each | each matches: aMimeType ]!

priorityFor: aMimeType	| matched |	matched := matches select: [ :each | each matches: aMimeType ].	matched isEmpty		ifTrue: [ ^ -1 ].	matched sort: [ :a :b |		a priority <= b priority ].	^ matched last priority!

seasideMimeType	"We don't know which one to take."	^ nil! !
!WACompositeMimeTypeMatch categoriesFor: #initializeWithMatches:!initialization!public! !
!WACompositeMimeTypeMatch categoriesFor: #matches:!public!testing! !
!WACompositeMimeTypeMatch categoriesFor: #priorityFor:!accessing!public! !
!WACompositeMimeTypeMatch categoriesFor: #seasideMimeType!accessing!public! !

!WACompositeMimeTypeMatch class methodsFor!

matches: aCollection	^ self basicNew initializeWithMatches: aCollection! !
!WACompositeMimeTypeMatch class categoriesFor: #matches:!instance creation!public! !

