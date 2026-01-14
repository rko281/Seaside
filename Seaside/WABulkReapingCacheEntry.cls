"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WABulkReapingCacheEntry
	instanceVariableNames: 'value creationTime accessTime count lastCount'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABulkReapingCacheEntry guid: (GUID fromString: '{3d944335-663c-4f94-af27-cbb4b7586a6d}')!

WABulkReapingCacheEntry comment: 'I am a value in a WABulkReapingCache. It''s important that my values are not concurrently updated in order to avoid commit conflicts on GemStone/S.accessTime:		only set by reapercreationTime:	immutable, set only oncevalue:			immutable, set only oncelastCount:		only set by reapercount:			updated concurrently but this is not an issue since we use a WAReducedConflictCounter    Instance Variables	count:			<WAReducedConflictCounter>	lastCount:		<Integer>	creationTime:	<Integer>	accessTime:		<Integer>	value:			<Object>'!

!WABulkReapingCacheEntry categoriesForClass!Seaside-Core-Cache! !

!WABulkReapingCacheEntry methodsFor!

accessTime	^ accessTime!

creationTime	^ creationTime!

hasBeenAccessedSinceLastReap	^ count value > lastCount!

incrementCount	count increment!

initializeWithValue: anObject	| now |	self initialize.	value := anObject.	now := Time totalSeconds.	creationTime := now.	accessTime := now.	count := GRPlatform current newReducedConflictCounter.	lastCount := 0!

setAccessTime: anInteger	accessTime := anInteger.	lastCount := count value!

value	^ value!

value: anObject	| now |	now := Time totalSeconds.	accessTime := now.	creationTime := now.	value := anObject! !

!WABulkReapingCacheEntry categoriesForMethods!
accessTime!accessing!public! !
creationTime!accessing!public! !
hasBeenAccessedSinceLastReap!public!testing! !
incrementCount!public! !
initializeWithValue:!initialization!public! !
setAccessTime:!public! !
value!accessing!public! !
value:!accessing!public! !
!

!WABulkReapingCacheEntry class methodsFor!

value: anObject	^ self basicNew		initializeWithValue: anObject;		yourself! !

!WABulkReapingCacheEntry class categoriesForMethods!
value:!instance creation!public! !
!

