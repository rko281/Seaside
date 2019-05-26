"Filed out from Dolphin Smalltalk 7"!

WABidirectionalCache subclass: #WAPredictableCache
	instanceVariableNames: 'nextKey'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPredictableCache guid: (GUID fromString: '{7aebf7a3-995d-4af1-98c8-710a434f7020}')!
WAPredictableCache comment: 'A WAPredictableCache is a WACache that uses incrementing numbers as cache keys. This way the keys are predictable. This is useful for tests.'!
!WAPredictableCache categoriesForClass!Seaside-Tests-Canvas! !
!WAPredictableCache methodsFor!

initialize	super initialize.	nextKey := 1!

store: anObject	"Store anObject in the cache, generating a new random key. Return the key."		| key |	key := nextKey greaseString.	nextKey := nextKey + 1.	self at: key put: anObject.		^ key! !
!WAPredictableCache categoriesFor: #initialize!initialization!public! !
!WAPredictableCache categoriesFor: #store:!public! !

