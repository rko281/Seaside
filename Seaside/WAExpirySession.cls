"Filed out from Dolphin Smalltalk"!

WASession subclass: #WAExpirySession
	instanceVariableNames: ''
	classVariableNames: 'Created Unregistered'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExpirySession guid: (GUID fromString: '{b5cdd68e-30e2-40e7-9d15-d8b9bb9cc51d}')!

WAExpirySession comment: ''!

!WAExpirySession categoriesForClass!Unclassified! !

!WAExpirySession methodsFor!

initialize	super initialize.	Created := Created + 1!

unregistered	super unregistered.	Unregistered := Unregistered + 1! !

!WAExpirySession categoriesForMethods!
initialize!initialization!public! !
unregistered!parent/child!public! !
!

!WAExpirySession class methodsFor!

created	^ Created!

initialize	self resetCounters!

resetCounters	Unregistered := 0.	Created := 0!

unregistered	^ Unregistered! !

!WAExpirySession class categoriesForMethods!
created!accessing!public! !
initialize!class initialization!public! !
resetCounters!actions!public! !
unregistered!accessing!public! !
!

