"Filed out from Dolphin Smalltalk"!

WABidirectionalCache subclass: #WAPredictableCache
	instanceVariableNames: 'nextKey'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPredictableCache guid: (GUID fromString: '{936bb04b-824e-424a-a9f2-8093ef48d8dd}')!

WAPredictableCache comment: 'A WAPredictableCache is a WACache that uses incrementing numbers as cache keys. This way the keys are predictable. This is useful for tests.'!

!WAPredictableCache categoriesForClass!Base! !

!WAPredictableCache methodsFor!

initialize	super initialize.	nextKey := 1!

store: anObject	"Store anObject in the cache, generating a new random key. Return the key."		| key |	key := nextKey greaseString.	nextKey := nextKey + 1.	self at: key put: anObject.		^ key! !

!WAPredictableCache categoriesForMethods!
initialize!initialization!public! !
store:!public! !
!

