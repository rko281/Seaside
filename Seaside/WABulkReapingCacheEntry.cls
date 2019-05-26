"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WABulkReapingCacheEntry
	instanceVariableNames: 'value creationTime accessTime count lastCount'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABulkReapingCacheEntry guid: (GUID fromString: '{b0d93bbe-16b6-4724-a850-91b408eb3025}')!
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
!WABulkReapingCacheEntry categoriesFor: #accessTime!accessing!public! !
!WABulkReapingCacheEntry categoriesFor: #creationTime!accessing!public! !
!WABulkReapingCacheEntry categoriesFor: #hasBeenAccessedSinceLastReap!public!testing! !
!WABulkReapingCacheEntry categoriesFor: #incrementCount!public! !
!WABulkReapingCacheEntry categoriesFor: #initializeWithValue:!initialization!public! !
!WABulkReapingCacheEntry categoriesFor: #setAccessTime:!public! !
!WABulkReapingCacheEntry categoriesFor: #value!accessing!public! !
!WABulkReapingCacheEntry categoriesFor: #value:!accessing!public! !

!WABulkReapingCacheEntry class methodsFor!

value: anObject	^ self basicNew		initializeWithValue: anObject;		yourself! !
!WABulkReapingCacheEntry class categoriesFor: #value:!instance creation!public! !

