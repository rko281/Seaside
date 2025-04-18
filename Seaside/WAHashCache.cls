﻿"Filed out from Dolphin Smalltalk"!

WAExpiringCache subclass: #WAHashCache
	instanceVariableNames: 'keyTable size byAccessStart byAccessEnd byCreationStart byCreationEnd'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHashCache guid: (GUID fromString: '{10cd7813-e44b-4649-8862-8f16cf881305}')!

WAHashCache comment: 'WAHashCache is a hash table based implementation of WACache.The characteristics of WAHashCache are:- supports both absolute and relative timeouts at the same time https://www.owasp.org/index.php/Session_Management_Cheat_Sheet#Automatic_Session_Expiration- supports a maximum size with definable overflow action (expire oldest, expire least recently used, signal exception)- access by key is fast (O(1) average case O(n) worst case)- reaping expired sessions is proportional (O(n)) to the number of expired session and independent of the total number of sessions (O(1))- creating a new session independent of the total number of sessions- does not guard against hash collision attacks, you should not use user generated keysInstance Variables:	keyTable 				<Array<WACacheKeyEntry>>	size					<Integer>	byAccessStart			<WACacheListEntry>	byAccessEnd			<WACacheListEntry>	byCreationStart		<WACacheListEntry>	byCreationEnd			<WACacheListEntry>keyTable:	Open hash table of  WACacheKeyEntrybyAccessStart	Head of the linked list sorted by access timebyAccessEnd		Tail of the linked list sorted by access timebyCreationStart	Head of the linked list sorted by creation timebyCreationEnd	Tail of the linked list sorted by creation timeThe implementation is a combination of:- an open hash table, used for look ups by key - a linked list of cache entries sorted by creation time, used for reaping by absolute age- a linked list of cache entries sorted by access time, used for reaping by relative ageFor every cache entry there is a node in the hash table and a node in both of the linked lists. It is possible to navigate from every node for a key to every other node of the same key. This is required for removing and updating entries.'!

!WAHashCache categoriesForClass!Cache! !

!WAHashCache methodsFor!

addToAccessEnd: aCacheListEntry	| currentLast |	currentLast := byAccessEnd.	currentLast isNil ifFalse: [		currentLast next: aCacheListEntry.		aCacheListEntry previous: currentLast ].	aCacheListEntry initializeTime.	byAccessEnd := aCacheListEntry.	byAccessStart isNil ifTrue: [		byAccessStart := aCacheListEntry ]!

addToCreationEnd: aCacheListEntry	| currentLast |	currentLast := byCreationEnd.	currentLast isNil ifFalse: [		currentLast next: aCacheListEntry.		aCacheListEntry previous: currentLast ].	byCreationEnd := aCacheListEntry.	byCreationStart isNil ifTrue: [		byCreationStart := aCacheListEntry ]!

at: aKey ifAbsent: aBlock	| keyHash index entry |	self sweepIncrementally.	keyHash := aKey hash.	index := (keyHash \\ keyTable size) + 1.	entry := self findEntryOrNilWithKey: aKey hash: keyHash index: index.	^ entry isNil		ifTrue: [ aBlock value ]		ifFalse: [ entry value ]!

at: aKey put: anObject	self at: aKey put: anObject overwrite: true.			^ anObject!

at: aKey put: anObject overwrite: aBoolean	| index keyHash entry |	self sweepIncrementally.	self growCheck.	keyHash := aKey hash.	index := (keyHash \\ keyTable size) + 1.	entry := self findEntryOrNilWithKey: aKey hash: keyHash index: index.	entry isNil		ifTrue: [			"no mapping for this key exists"			| cacheEntry byAccessEntry byCreationEntry |			(maximumSize > 0 and: [ size = maximumSize ])				ifTrue: [ self performOverflowAction ].			"create entry"			cacheEntry := WACacheKeyEntry key: aKey value: anObject.			byCreationEntry := WACacheListEntry entry: cacheEntry.			byAccessEntry := WACacheListEntry entry: cacheEntry.			cacheEntry byAccessListEntry: byAccessEntry.			cacheEntry byCreationListEntry: byCreationEntry.			self addToAccessEnd: byAccessEntry.			self addToCreationEnd: byCreationEntry.			self insertKeyEntry: cacheEntry.			size := size + 1 ]		ifFalse: [			"a mapping for this key already exists"			| byAccessListEntry byCreationListEntry |			aBoolean ifFalse: [ ^ false ].						byAccessListEntry := entry byAccessListEntry.			byCreationListEntry := entry byCreationListEntry.			self expunge: byAccessListEntry.			self addToAccessEnd: byAccessListEntry.			self expunge: byCreationListEntry.			self addToCreationEnd: byCreationListEntry.						"notify removal"			self cacheEntryRemoved: entry value.						"update entry"			entry value: anObject ].			^ true!

clear	self keysAndValuesDo: [ :key :value |		self cacheEntryRemoved: value ].	size := 0.	keyTable atAllPut: nil.	byAccessStart := nil.	byAccessEnd := nil.	byCreationStart := nil.	byCreationEnd := nil!

copy	| copy |	copy := self class initialSize: keyTable size maximumSize: maximumSize maximumAbsoluteAge: maximumAbsoluteAge maximumRelativeAge: maximumRelativeAge overflowAction: overflowAction.	self keysAndValuesDo: [ :key :value |		copy at: key put: value ].	^ copy!

errorAlreadyMapped	self error: 'Already mapped'!

errorKeyNotFound	self error: 'Key not found'!

errorNotMapped	self error: 'Not mapped'!

expunge: aListEntry	"update list start"	aListEntry == byAccessStart		ifTrue: [ byAccessStart := aListEntry next ].	aListEntry == byCreationStart		ifTrue: [ byCreationStart := aListEntry next ].	"update list end"	aListEntry == byAccessEnd		ifTrue: [ byAccessEnd := aListEntry previous ].	aListEntry == byCreationEnd		ifTrue: [ byCreationEnd := aListEntry previous ].	"fix previous and next pointers"	aListEntry expunge!

findEntryOrNilWithKey: aKey hash: anHashInteger index: anIndexInteger	| entry |	entry := keyTable at: anIndexInteger.	[ entry isNil ] whileFalse: [		(entry keyHash = anHashInteger and: [ entry key = aKey ])			ifTrue: [				| byAccessListEntry |				byAccessListEntry := entry byAccessListEntry.				self expunge: byAccessListEntry.				self addToAccessEnd: byAccessListEntry.				^ entry ]			ifFalse: [ entry := entry next ] ].	^ nil!

growCheck	size > (keyTable size * self loadFactor) ifTrue: [		"rehash for fun"		| newKeyTable newValueTable newTableSize |		newTableSize := WAHashTableSizes atLeast: keyTable size * 2.		newKeyTable := Array new: newTableSize.		newValueTable := Array new: newTableSize.				"rehash keys"		keyTable do: [ :each |			| next current |			current := each.			[ current isNil ] whileFalse: [				| index atTargetIndex |				next := current next.				index := (current keyHash \\ newTableSize) + 1.				atTargetIndex := newKeyTable at: index.				atTargetIndex isNil					ifTrue: [ newKeyTable at: index put: current ]					ifFalse: [						[ atTargetIndex next isNil ] whileFalse: [							atTargetIndex := atTargetIndex next ].						atTargetIndex next: current ].				current next: nil.				current := next ] ].				keyTable := newKeyTable ]!

initializeWithInitialSize: aSizeInteger maximumSize: aMaximumSizeInteger maximumAbsoluteAge: aMaximumAbsoluteAge maximumRelativeAge: aMaximumRelativeAge overflowAction: aOverflowActionSymbol	super initializeWithInitialSize: aSizeInteger maximumSize: aMaximumSizeInteger maximumAbsoluteAge: aMaximumAbsoluteAge maximumRelativeAge: aMaximumRelativeAge overflowAction: aOverflowActionSymbol.	size := 0.	keyTable := Array new: aSizeInteger!

insertKeyEntry: aCacheEntry	| keyHash key index entry previous |	keyHash := aCacheEntry keyHash.	key := aCacheEntry key.	index := (keyHash \\ keyTable size) + 1.	entry := keyTable at: index.	previous := nil.	[ entry isNil ] whileFalse: [		(entry keyHash = aCacheEntry and: [ entry key = key ])			ifTrue: [				previous isNil					ifTrue: [ keyTable at: index put: aCacheEntry ]					ifFalse: [  previous next: aCacheEntry ].				^ self ]			ifFalse: [				previous := entry.				entry := entry next ] ].	previous isNil		ifTrue: [ keyTable at: index put: aCacheEntry ]		ifFalse: [  previous next: aCacheEntry ]!

keysAndValuesDo: aTwoArgumentBlock	self sweepIncrementally.	keyTable do: [ :each |		| cacheEntry |		cacheEntry := each.		[ cacheEntry isNil ] whileFalse: [			aTwoArgumentBlock value: cacheEntry key value: cacheEntry value.			cacheEntry := cacheEntry next ] ]!

loadFactor	^ 0.75!

performOverflowAction	overflowAction == self class signalError ifTrue: [		WAMaximumNumberOfSessionsExceededError signal ].	overflowAction == self class removeAbsoluteOldest ifTrue: [		self removeCacheEntry: byCreationStart cacheEntry ].	overflowAction == self class removeRelativeOldest ifTrue: [		self removeCacheEntry: byAccessStart cacheEntry ]!

removeCacheEntry: aCacheEntry	self removeFromKeyTable: aCacheEntry.	self expunge: aCacheEntry byAccessListEntry.	self expunge: aCacheEntry byCreationListEntry.	self cacheEntryRemoved: aCacheEntry value.		size := size - 1.	^ aCacheEntry value!

removeFromKeyTable: aCacheEntry	| index entry previous |	index := (aCacheEntry keyHash \\ keyTable size) + 1.	entry := keyTable at: index.	previous := nil.	"no need for nil check, it has to be here"	[ aCacheEntry == entry ] whileFalse: [		previous := entry.		entry := entry next ].	previous isNil		ifTrue: [ keyTable at: index put: entry next ]		ifFalse: [ previous next: entry next ]!

removeKey: aKey	| keyHash index entry |	self sweepIncrementally.	keyHash := aKey hash.	index := (keyHash \\ keyTable size) + 1.	entry := self findEntryOrNilWithKey: aKey hash: keyHash index: index.	^ entry isNil		ifTrue: [ self errorKeyNotFound ]		ifFalse: [ self removeCacheEntry: entry ]!

size	^ size!

store: anObject	| candidateKey |	[ 		candidateKey := WAKeyGenerator current keyOfLength: self keySize.		self at: candidateKey put: anObject overwrite: false ] whileFalse.	^ candidateKey!

sweep: aListRoot maximumAge: anNumberOfSeconds now: currentSeconds	| current |	current := aListRoot.	[ current isNil ] whileFalse: [		(currentSeconds - current time) > anNumberOfSeconds			ifTrue: [				self removeCacheEntry: current cacheEntry.				current := current next ]			ifFalse: [				"the list is ordered so we can stop scanning"				^ self ] ]!

sweepIncrementally	| now |	now := Time totalSeconds.		"absolute timeout sweep"	maximumAbsoluteAge > 0 ifTrue: [		self sweep: byCreationStart maximumAge: maximumAbsoluteAge now: now ].		"relative timeout sweep"	maximumRelativeAge > 0 ifTrue: [		self sweep: byAccessStart maximumAge: maximumRelativeAge now: now ]! !

!WAHashCache categoriesForMethods!
addToAccessEnd:!private! !
addToCreationEnd:!private! !
at:ifAbsent:!accessing!public! !
at:put:!public!putting! !
at:put:overwrite:!private! !
clear!public! !
copy!copying!public! !
errorAlreadyMapped!private! !
errorKeyNotFound!private! !
errorNotMapped!private! !
expunge:!private! !
findEntryOrNilWithKey:hash:index:!private! !
growCheck!private! !
initializeWithInitialSize:maximumSize:maximumAbsoluteAge:maximumRelativeAge:overflowAction:!initialization!public! !
insertKeyEntry:!private! !
keysAndValuesDo:!enumerating!public! !
loadFactor!private! !
performOverflowAction!private! !
removeCacheEntry:!private! !
removeFromKeyTable:!private! !
removeKey:!public!removing! !
size!accessing!public! !
store:!public!putting! !
sweep:maximumAge:now:!private! !
sweepIncrementally!private! !
!

!WAHashCache class methodsFor!

overflowActions	^ Array		with: self removeRelativeOldest		with: self removeAbsoluteOldest		with: self signalError!

removeAbsoluteOldest	^ #removeAbsoluteOldest!

removeRelativeOldest	^ #removeRelativeOldest!

signalError	^ #signalError! !

!WAHashCache class categoriesForMethods!
overflowActions!accessing!public! !
removeAbsoluteOldest!accessing!public! !
removeRelativeOldest!accessing!public! !
signalError!accessing!public! !
!

