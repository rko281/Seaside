"Filed out from Dolphin Smalltalk"!

WAKeyGenerator subclass: #WAPrecomputedKeyGenerator
	instanceVariableNames: 'keys current'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPrecomputedKeyGenerator guid: (GUID fromString: '{56307274-4f83-4b5d-ab31-bc52893b2465}')!

WAPrecomputedKeyGenerator comment: ''!

!WAPrecomputedKeyGenerator categoriesForClass!Seaside-Tests-Core-Cache! !

!WAPrecomputedKeyGenerator methodsFor!

initializeWithKeys: aSequenceableCollection	self initialize.	keys := aSequenceableCollection.	current := 1!

keyOfLength: anInteger	| key |	key := keys at: current.	current := current + 1.	^ key! !

!WAPrecomputedKeyGenerator categoriesForMethods!
initializeWithKeys:!initialization!public! !
keyOfLength:!public! !
!

!WAPrecomputedKeyGenerator class methodsFor!

from: start to: end	^ self keys: (start to: end) asArray!

keys: aSequenceableCollection	^ self basicNew		initializeWithKeys: aSequenceableCollection! !

!WAPrecomputedKeyGenerator class categoriesForMethods!
from:to:!instance creation!public! !
keys:!instance creation!public! !
!

