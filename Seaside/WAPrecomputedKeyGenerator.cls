"Filed out from Dolphin Smalltalk 7"!

WAKeyGenerator subclass: #WAPrecomputedKeyGenerator
	instanceVariableNames: 'keys current'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPrecomputedKeyGenerator guid: (GUID fromString: '{b527c747-cf8c-49be-8d24-a895c474e09e}')!
WAPrecomputedKeyGenerator comment: ''!
!WAPrecomputedKeyGenerator categoriesForClass!Seaside-Tests-Core-Cache! !
!WAPrecomputedKeyGenerator methodsFor!

initializeWithKeys: aSequenceableCollection	self initialize.	keys := aSequenceableCollection.	current := 1!

keyOfLength: anInteger	| key |	key := keys at: current.	current := current + 1.	^ key! !
!WAPrecomputedKeyGenerator categoriesFor: #initializeWithKeys:!initialization!public! !
!WAPrecomputedKeyGenerator categoriesFor: #keyOfLength:!public! !

!WAPrecomputedKeyGenerator class methodsFor!

from: start to: end	^ self keys: (start to: end) asArray!

keys: aSequenceableCollection	^ self basicNew		initializeWithKeys: aSequenceableCollection! !
!WAPrecomputedKeyGenerator class categoriesFor: #from:to:!instance creation!public! !
!WAPrecomputedKeyGenerator class categoriesFor: #keys:!instance creation!public! !

