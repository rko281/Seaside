"Filed out from Dolphin Smalltalk 7"!

WAUploadCallback subclass: #WAAllUploadsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAllUploadsCallback guid: (GUID fromString: '{e3e90583-a5c1-420b-ac75-61d3c9acc9f4}')!
WAAllUploadsCallback comment: ''!
!WAAllUploadsCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAAllUploadsCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	self evaluateWithArgument: ((anOrderedCollection		collect: [ :each | self valueForField: each])		reject: [ :each | each isNil ])! !
!WAAllUploadsCallback categoriesFor: #evaluateWithFieldValues:!evaluation!public! !

