"Filed out from Dolphin Smalltalk"!

WACache subclass: #WABidirectionalCache
	instanceVariableNames: 'byKey byValue'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABidirectionalCache guid: (GUID fromString: '{b732887a-105b-48dd-8f1e-53066c9012b9}')!

WABidirectionalCache comment: 'I support key -> value and value -> key mappings and never forget anything.I also implement serveral methods of Dictionary.'!

!WABidirectionalCache categoriesForClass!Cache! !

!WABidirectionalCache methodsFor!

at: aKey	^ byKey at: aKey!

at: aKey ifAbsent: aBlock	^ byKey at: aKey ifAbsent: aBlock!

at: aKey put: anObject	byValue at: anObject ifPresent: [ :key |		key = aKey ifFalse: [			self errorAlreadyMapped ] ].	byKey at: aKey ifPresent: [ :value |		byValue removeKey: value ].	byKey at: aKey put: anObject.	byValue at: anObject put: aKey.	^ anObject!

clear	byKey removeAll.	byValue removeAll!

do: aBlock	byKey do: aBlock!

errorAlreadyMapped	self error: 'Already mapped'!

includes: anObject	^ byValue includesKey: anObject!

includesKey: key	^ byKey includesKey: key!

initialize	super initialize.	byKey := Dictionary new.	byValue := Dictionary new!

keyAtValue: anObject ifAbsent: aBlock	^ byValue at: anObject ifAbsent: aBlock!

keys	^ byKey keys!

keysAndValuesDo: aTwoArgumentBlock	byKey keysAndValuesDo: aTwoArgumentBlock!

postCopy	super postCopy.	byKey := byKey copy.	byValue := byValue copy!

remove: anObject	| key |	key := byValue removeKey: anObject.	byKey removeKey: key!

removeKey: aKey ifAbsent: aBlock	| value |	value := byKey at: aKey ifAbsent: [ ^ aBlock value ].	byKey removeKey: aKey.	byValue removeKey: value.	^ value!

size	^ byKey size!

store: anObject	| candidateKey |	[ 		candidateKey := WAKeyGenerator current keyOfLength: self keySize.		self includesKey: candidateKey ] whileTrue.	self at: candidateKey put: anObject.	^ candidateKey!

valuesCollect: aBlock	| result |	result := self species new.	self keysAndValuesDo: [ :key :value |		result at: key put: (aBlock value: value) ].	^ result! !

!WABidirectionalCache categoriesForMethods!
at:!accessing!public! !
at:ifAbsent:!accessing!public! !
at:put:!public!putting! !
clear!public! !
do:!enumerating!public! !
errorAlreadyMapped!private! !
includes:!public!testing! !
includesKey:!private! !
initialize!initialization!public! !
keyAtValue:ifAbsent:!accessing!public! !
keys!accessing!public! !
keysAndValuesDo:!enumerating!public! !
postCopy!copying!public! !
remove:!public!removing! !
removeKey:ifAbsent:!public!removing! !
size!accessing!public! !
store:!public!putting! !
valuesCollect:!public! !
!

