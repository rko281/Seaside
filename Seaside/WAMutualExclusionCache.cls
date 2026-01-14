"Filed out from Dolphin Smalltalk"!

WACache subclass: #WAMutualExclusionCache
	instanceVariableNames: 'mutex cache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMutualExclusionCache guid: (GUID fromString: '{af3eb734-9c24-4059-a9ec-1ef7df1c2951}')!

WAMutualExclusionCache comment: 'WAMutualExclusionCacheNG is a wrapper around a WACacheNG that wraps all messages in a mutex.Instance Variables:	mutex	<WAMutex>	cache	<WACache>'!

!WAMutualExclusionCache categoriesForClass!Seaside-Core-Cache! !

!WAMutualExclusionCache methodsFor!

at: aKey ifAbsent: aBlock	^ mutex critical: [		cache at: aKey ifAbsent: aBlock ]!

at: aKey put: anObject	^ mutex critical: [		cache at: aKey put: anObject ]!

clear	^ mutex critical: [		cache clear ]!

initializeOn: aCache	self initialize.	mutex := WAMutex new.	cache := aCache!

keyAtValue: anObject ifAbsent: aBlock	^ mutex critical: [		cache keyAtValue: anObject ifAbsent: aBlock ]!

keysAndValuesDo: aTwoArgumentBlock	^ mutex critical: [		cache keysAndValuesDo: aTwoArgumentBlock ]!

keySize	^ mutex critical: [		cache keySize ]!

postCopy	super postCopy.	mutex := WAMutex new.	cache := cache copy!

remove: anObject	^ mutex critical: [		cache remove: anObject ]!

removeKey: aKey	^ mutex critical: [		cache removeKey: aKey ]!

size	^ mutex critical: [		cache size ]!

store: anObject	^ mutex critical: [		cache store: anObject ]!

underlyingCache	^ cache! !

!WAMutualExclusionCache categoriesForMethods!
at:ifAbsent:!accessing!public! !
at:put:!public!putting! !
clear!public! !
initializeOn:!initialization!public! !
keyAtValue:ifAbsent:!accessing!public! !
keysAndValuesDo:!enumerating!public! !
keySize!accessing!public! !
postCopy!copying!public! !
remove:!public!removing! !
removeKey:!public!removing! !
size!accessing!public! !
store:!public!putting! !
underlyingCache!accessing!public! !
!

!WAMutualExclusionCache class methodsFor!

on: aCache	^ self basicNew initializeOn: aCache; yourself! !

!WAMutualExclusionCache class categoriesForMethods!
on:!instance creation!public! !
!

