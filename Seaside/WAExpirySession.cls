"Filed out from Dolphin Smalltalk"!

WASession subclass: #WAExpirySession
	instanceVariableNames: ''
	classVariableNames: 'Created Unregistered'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExpirySession guid: (GUID fromString: '{0ebefc07-23ed-40da-91c0-5cc55aa74179}')!

WAExpirySession comment: ''!

!WAExpirySession categoriesForClass!Seaside-Tests-Functional! !

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

