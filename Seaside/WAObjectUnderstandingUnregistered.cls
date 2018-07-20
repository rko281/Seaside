"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAObjectUnderstandingUnregistered
	instanceVariableNames: 'hasReceivedUnregistered'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAObjectUnderstandingUnregistered guid: (GUID fromString: '{3807daed-6e8d-4bb6-81b9-cec218fd0d56}')!
WAObjectUnderstandingUnregistered comment: ''!
!WAObjectUnderstandingUnregistered categoriesForClass!Seaside-Tests-Core-Cache! !
!WAObjectUnderstandingUnregistered methodsFor!

hasReceivedUnregistered	^ hasReceivedUnregistered!

initialize	super initialize.	hasReceivedUnregistered := false!

unregistered	hasReceivedUnregistered := true! !
!WAObjectUnderstandingUnregistered categoriesFor: #hasReceivedUnregistered!accessing!public! !
!WAObjectUnderstandingUnregistered categoriesFor: #initialize!initialization!public! !
!WAObjectUnderstandingUnregistered categoriesFor: #unregistered!public!registration! !

