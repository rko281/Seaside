"Filed out from Dolphin Smalltalk"!

WAKeyGenerator subclass: #WAPrecomputedKeyGenerator
	instanceVariableNames: 'keys current'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPrecomputedKeyGenerator guid: (GUID fromString: '{352411f6-84aa-4e23-b62c-7f5bfe60eb56}')!

WAPrecomputedKeyGenerator comment: ''!

!WAPrecomputedKeyGenerator categoriesForClass!Cache! !

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

