"Filed out from Dolphin Smalltalk 7"!

WAAllValuesCallback subclass: #WAAllUrlsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAllUrlsCallback guid: (GUID fromString: '{71fa4363-ed6f-450c-8336-d1b44d06713e}')!
WAAllUrlsCallback comment: ''!
!WAAllUrlsCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAAllUrlsCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAUrl absolute: anObject ]! !
!WAAllUrlsCallback categoriesFor: #valueForField:!converting!public! !

