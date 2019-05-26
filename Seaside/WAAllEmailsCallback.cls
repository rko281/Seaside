"Filed out from Dolphin Smalltalk 7"!

WAAllValuesCallback subclass: #WAAllEmailsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAllEmailsCallback guid: (GUID fromString: '{7cddfad2-5e77-4432-9ed1-b89fdd16d862}')!
WAAllEmailsCallback comment: ''!
!WAAllEmailsCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAAllEmailsCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAEmailAddress address: anObject ]! !
!WAAllEmailsCallback categoriesFor: #valueForField:!converting!public! !

