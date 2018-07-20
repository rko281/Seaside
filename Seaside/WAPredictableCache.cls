"Filed out from Dolphin Smalltalk 7"!

WABidirectionalCache subclass: #WAPredictableCache
	instanceVariableNames: 'nextKey'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPredictableCache guid: (GUID fromString: '{d1edfc38-ad50-4b91-a87c-b4e5e29fe62d}')!
WAPredictableCache comment: 'A WAPredictableCache is a WACache that uses incrementing numbers as cache keys. This way the keys are predictable. This is useful for tests.'!
!WAPredictableCache categoriesForClass!Seaside-Tests-Canvas! !
!WAPredictableCache methodsFor!

initialize	super initialize.	nextKey := 1!

store: anObject	"Store anObject in the cache, generating a new random key. Return the key."		| key |	key := nextKey greaseString.	nextKey := nextKey + 1.	self at: key put: anObject.		^ key! !
!WAPredictableCache categoriesFor: #initialize!initialization!public! !
!WAPredictableCache categoriesFor: #store:!public! !

