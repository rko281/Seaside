"Filed out from Dolphin Smalltalk"!

WAAllValuesCallback subclass: #WAAllUrlsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAllUrlsCallback guid: (GUID fromString: '{f7a8e39e-17c7-4879-82ca-1acdc13ce988}')!

WAAllUrlsCallback comment: ''!

!WAAllUrlsCallback categoriesForClass!Callbacks! !

!WAAllUrlsCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAUrl absolute: anObject ]! !

!WAAllUrlsCallback categoriesForMethods!
valueForField:!converting!public! !
!

