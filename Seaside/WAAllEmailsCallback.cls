"Filed out from Dolphin Smalltalk"!

WAAllValuesCallback subclass: #WAAllEmailsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAllEmailsCallback guid: (GUID fromString: '{b8ab4bcc-9adc-4aed-b0b4-487e9c3e3905}')!

WAAllEmailsCallback comment: ''!

!WAAllEmailsCallback categoriesForClass!Callbacks! !

!WAAllEmailsCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAEmailAddress address: anObject ]! !

!WAAllEmailsCallback categoriesForMethods!
valueForField:!converting!public! !
!

