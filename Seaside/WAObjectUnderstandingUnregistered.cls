"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAObjectUnderstandingUnregistered
	instanceVariableNames: 'hasReceivedUnregistered'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAObjectUnderstandingUnregistered guid: (GUID fromString: '{e24236aa-e683-4122-809d-617ed60737fb}')!
WAObjectUnderstandingUnregistered comment: ''!
!WAObjectUnderstandingUnregistered categoriesForClass!Seaside-Tests-Core-Cache! !
!WAObjectUnderstandingUnregistered methodsFor!

hasReceivedUnregistered	^ hasReceivedUnregistered!

initialize	super initialize.	hasReceivedUnregistered := false!

unregistered	hasReceivedUnregistered := true! !
!WAObjectUnderstandingUnregistered categoriesFor: #hasReceivedUnregistered!accessing!public! !
!WAObjectUnderstandingUnregistered categoriesFor: #initialize!initialization!public! !
!WAObjectUnderstandingUnregistered categoriesFor: #unregistered!public!registration! !

