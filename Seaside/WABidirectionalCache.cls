"Filed out from Dolphin Smalltalk 7"!

WACache subclass: #WABidirectionalCache
	instanceVariableNames: 'byKey byValue'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABidirectionalCache guid: (GUID fromString: '{02c43f58-8f71-4188-b865-661c79833005}')!
WABidirectionalCache comment: 'I support key -> value and value -> key mappings and never forget anything.I also implement serveral methods of Dictionary.'!
!WABidirectionalCache categoriesForClass!Seaside-Core-Cache! !
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

removeKey: aKey ifAbsent: aBlock	| value |	value := byKey at: aKey ifAbsent: [ ^ aBlock value ].	byKey removeKey: aKey.	byValue removeKey: value.	^ value	!

size	^ byKey size!

store: anObject	| candidateKey |	[ 		candidateKey := WAKeyGenerator current keyOfLength: self keySize.		self includesKey: candidateKey ] whileTrue.	self at: candidateKey put: anObject.	^ candidateKey!

valuesCollect: aBlock	| result |	result := self species new.	self keysAndValuesDo: [ :key :value |		result at: key put: (aBlock value: value) ].	^ result! !
!WABidirectionalCache categoriesFor: #at:!accessing!public! !
!WABidirectionalCache categoriesFor: #at:ifAbsent:!accessing!public! !
!WABidirectionalCache categoriesFor: #at:put:!public!putting! !
!WABidirectionalCache categoriesFor: #clear!public! !
!WABidirectionalCache categoriesFor: #do:!enumerating!public! !
!WABidirectionalCache categoriesFor: #errorAlreadyMapped!private! !
!WABidirectionalCache categoriesFor: #includes:!public!testing! !
!WABidirectionalCache categoriesFor: #includesKey:!private! !
!WABidirectionalCache categoriesFor: #initialize!initialization!public! !
!WABidirectionalCache categoriesFor: #keyAtValue:ifAbsent:!accessing!public! !
!WABidirectionalCache categoriesFor: #keys!accessing!public! !
!WABidirectionalCache categoriesFor: #keysAndValuesDo:!enumerating!public! !
!WABidirectionalCache categoriesFor: #postCopy!copying!public! !
!WABidirectionalCache categoriesFor: #remove:!public!removing! !
!WABidirectionalCache categoriesFor: #removeKey:ifAbsent:!public!removing! !
!WABidirectionalCache categoriesFor: #size!accessing!public! !
!WABidirectionalCache categoriesFor: #store:!public!putting! !
!WABidirectionalCache categoriesFor: #valuesCollect:!public! !

