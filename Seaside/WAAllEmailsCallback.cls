"Filed out from Dolphin Smalltalk"!

WAAllValuesCallback subclass: #WAAllEmailsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAllEmailsCallback guid: (GUID fromString: '{cf9d84a6-51a7-4cb6-99be-2858d12fb6ec}')!

WAAllEmailsCallback comment: ''!

!WAAllEmailsCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAAllEmailsCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAEmailAddress address: anObject ]! !

!WAAllEmailsCallback categoriesForMethods!
valueForField:!converting!public! !
!

