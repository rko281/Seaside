﻿"Filed out from Dolphin Smalltalk 7"!

WAExpiringCache subclass: #WAHashCache
	instanceVariableNames: 'keyTable size byAccessStart byAccessEnd byCreationStart byCreationEnd'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHashCache guid: (GUID fromString: '{5551652d-3c19-481a-ba2f-9251b242800d}')!
WAHashCache comment: 'WAHashCache is a hash table based implementation of WACache.
!WAHashCache categoriesForClass!Seaside-Core-Cache! !
!WAHashCache methodsFor!

addToAccessEnd: aCacheListEntry

addToCreationEnd: aCacheListEntry

at: aKey ifAbsent: aBlock

at: aKey put: anObject

at: aKey put: anObject overwrite: aBoolean

clear

copy

errorAlreadyMapped

errorKeyNotFound

errorNotMapped

expunge: aListEntry

findEntryOrNilWithKey: aKey hash: anHashInteger index: anIndexInteger

growCheck

initializeWithInitialSize: aSizeInteger maximumSize: aMaximumSizeInteger maximumAbsoluteAge: aMaximumAbsoluteAge maximumRelativeAge: aMaximumRelativeAge overflowAction: aOverflowActionSymbol

insertKeyEntry: aCacheEntry

keysAndValuesDo: aTwoArgumentBlock

loadFactor

performOverflowAction

removeCacheEntry: aCacheEntry

removeFromKeyTable: aCacheEntry

removeKey: aKey

size

store: anObject

sweep: aListRoot maximumAge: anNumberOfSeconds now: currentSeconds

sweepIncrementally
!WAHashCache categoriesFor: #addToAccessEnd:!private! !
!WAHashCache categoriesFor: #addToCreationEnd:!private! !
!WAHashCache categoriesFor: #at:ifAbsent:!accessing!public! !
!WAHashCache categoriesFor: #at:put:!public!putting! !
!WAHashCache categoriesFor: #at:put:overwrite:!private! !
!WAHashCache categoriesFor: #clear!public! !
!WAHashCache categoriesFor: #copy!copying!public! !
!WAHashCache categoriesFor: #errorAlreadyMapped!private! !
!WAHashCache categoriesFor: #errorKeyNotFound!private! !
!WAHashCache categoriesFor: #errorNotMapped!private! !
!WAHashCache categoriesFor: #expunge:!private! !
!WAHashCache categoriesFor: #findEntryOrNilWithKey:hash:index:!private! !
!WAHashCache categoriesFor: #growCheck!private! !
!WAHashCache categoriesFor: #initializeWithInitialSize:maximumSize:maximumAbsoluteAge:maximumRelativeAge:overflowAction:!initialization!public! !
!WAHashCache categoriesFor: #insertKeyEntry:!private! !
!WAHashCache categoriesFor: #keysAndValuesDo:!enumerating!public! !
!WAHashCache categoriesFor: #loadFactor!private! !
!WAHashCache categoriesFor: #performOverflowAction!private! !
!WAHashCache categoriesFor: #removeCacheEntry:!private! !
!WAHashCache categoriesFor: #removeFromKeyTable:!private! !
!WAHashCache categoriesFor: #removeKey:!public!removing! !
!WAHashCache categoriesFor: #size!accessing!public! !
!WAHashCache categoriesFor: #store:!public!putting! !
!WAHashCache categoriesFor: #sweep:maximumAge:now:!private! !
!WAHashCache categoriesFor: #sweepIncrementally!private! !

!WAHashCache class methodsFor!

overflowActions

removeAbsoluteOldest

removeRelativeOldest

signalError
!WAHashCache class categoriesFor: #overflowActions!accessing!public! !
!WAHashCache class categoriesFor: #removeAbsoluteOldest!accessing!public! !
!WAHashCache class categoriesFor: #removeRelativeOldest!accessing!public! !
!WAHashCache class categoriesFor: #signalError!accessing!public! !
