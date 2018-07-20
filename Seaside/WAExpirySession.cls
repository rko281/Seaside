"Filed out from Dolphin Smalltalk 7"!

WASession subclass: #WAExpirySession
	instanceVariableNames: ''
	classVariableNames: 'Created Unregistered'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExpirySession guid: (GUID fromString: '{53c26f52-fa11-4b0e-9a15-bdc11dee5582}')!
WAExpirySession comment: ''!
!WAExpirySession categoriesForClass!Seaside-Tests-Functional! !
!WAExpirySession methodsFor!

initialize	super initialize.	Created := Created + 1!

unregistered	super unregistered.	Unregistered := Unregistered + 1! !
!WAExpirySession categoriesFor: #initialize!initialization!public! !
!WAExpirySession categoriesFor: #unregistered!parent/child!public! !

!WAExpirySession class methodsFor!

created	^ Created!

initialize	self resetCounters!

resetCounters	Unregistered := 0.	Created := 0!

unregistered	^ Unregistered! !
!WAExpirySession class categoriesFor: #created!accessing!public! !
!WAExpirySession class categoriesFor: #initialize!class initialization!public! !
!WAExpirySession class categoriesFor: #resetCounters!actions!public! !
!WAExpirySession class categoriesFor: #unregistered!accessing!public! !

