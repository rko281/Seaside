"Filed out from Dolphin Smalltalk 7"!

WAAllValuesCallback subclass: #WAAllUrlsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAllUrlsCallback guid: (GUID fromString: '{a951f291-a9ad-4543-b832-586e18935889}')!
WAAllUrlsCallback comment: ''!
!WAAllUrlsCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAAllUrlsCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAUrl absolute: anObject ]! !
!WAAllUrlsCallback categoriesFor: #valueForField:!converting!public! !

