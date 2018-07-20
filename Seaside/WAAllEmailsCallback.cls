"Filed out from Dolphin Smalltalk 7"!

WAAllValuesCallback subclass: #WAAllEmailsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAllEmailsCallback guid: (GUID fromString: '{cc8857eb-2a94-4dec-b3e2-d2d10d63adbd}')!
WAAllEmailsCallback comment: ''!
!WAAllEmailsCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAAllEmailsCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAEmailAddress address: anObject ]! !
!WAAllEmailsCallback categoriesFor: #valueForField:!converting!public! !

