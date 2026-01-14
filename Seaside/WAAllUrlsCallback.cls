"Filed out from Dolphin Smalltalk"!

WAAllValuesCallback subclass: #WAAllUrlsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAllUrlsCallback guid: (GUID fromString: '{a424f228-c751-460a-898f-8ad646fbae69}')!

WAAllUrlsCallback comment: ''!

!WAAllUrlsCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAAllUrlsCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAUrl absolute: anObject ]! !

!WAAllUrlsCallback categoriesForMethods!
valueForField:!converting!public! !
!

