"Filed out from Dolphin Smalltalk 7"!

WACache subclass: #WAMutualExclusionCache
	instanceVariableNames: 'mutex cache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMutualExclusionCache guid: (GUID fromString: '{4a7bc9d0-aa5b-470a-88dd-455cefa37b57}')!
WAMutualExclusionCache comment: 'WAMutualExclusionCacheNG is a wrapper around a WACacheNG that wraps all messages in a mutex.Instance Variables:	mutex	<WAMutex>	cache	<WACache>'!
!WAMutualExclusionCache categoriesForClass!Seaside-Core-Cache! !
!WAMutualExclusionCache methodsFor!

at: aKey ifAbsent: aBlock	^ mutex critical: [		cache at: aKey ifAbsent: aBlock ]	!

at: aKey put: anObject	^ mutex critical: [		cache at: aKey put: anObject ]	!

clear	^ mutex critical: [		cache clear ]	!

initializeOn: aCache	self initialize.	mutex := WAMutex new.	cache := aCache!

keyAtValue: anObject ifAbsent: aBlock	^ mutex critical: [		cache keyAtValue: anObject ifAbsent: aBlock ]	!

keysAndValuesDo: aTwoArgumentBlock	^ mutex critical: [		cache keysAndValuesDo: aTwoArgumentBlock ]	!

keySize	^ mutex critical: [		cache keySize ]	!

postCopy	super postCopy.	mutex := WAMutex new.	cache := cache copy!

remove: anObject	^ mutex critical: [		cache remove: anObject ]	!

removeKey: aKey	^ mutex critical: [		cache removeKey: aKey ]	!

size	^ mutex critical: [		cache size ]	!

store: anObject	^ mutex critical: [		cache store: anObject ]	!

underlyingCache	^ cache! !
!WAMutualExclusionCache categoriesFor: #at:ifAbsent:!accessing!public! !
!WAMutualExclusionCache categoriesFor: #at:put:!public!putting! !
!WAMutualExclusionCache categoriesFor: #clear!public! !
!WAMutualExclusionCache categoriesFor: #initializeOn:!initialization!public! !
!WAMutualExclusionCache categoriesFor: #keyAtValue:ifAbsent:!accessing!public! !
!WAMutualExclusionCache categoriesFor: #keysAndValuesDo:!enumerating!public! !
!WAMutualExclusionCache categoriesFor: #keySize!accessing!public! !
!WAMutualExclusionCache categoriesFor: #postCopy!copying!public! !
!WAMutualExclusionCache categoriesFor: #remove:!public!removing! !
!WAMutualExclusionCache categoriesFor: #removeKey:!public!removing! !
!WAMutualExclusionCache categoriesFor: #size!accessing!public! !
!WAMutualExclusionCache categoriesFor: #store:!public!putting! !
!WAMutualExclusionCache categoriesFor: #underlyingCache!accessing!public! !

!WAMutualExclusionCache class methodsFor!

on: aCache	^ self basicNew initializeOn: aCache; yourself! !
!WAMutualExclusionCache class categoriesFor: #on:!instance creation!public! !

