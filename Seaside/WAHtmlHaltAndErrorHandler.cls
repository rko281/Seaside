"Filed out from Dolphin Smalltalk 7"!

WAHtmlErrorHandler subclass: #WAHtmlHaltAndErrorHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlHaltAndErrorHandler guid: (GUID fromString: '{59836e2c-b1ce-40b6-b663-ad6e4322e9d3}')!
WAHtmlHaltAndErrorHandler comment: '
This exception handler also catches halts, in order to prevent Debugger windows from popping up and blocking server processes in deployed images.

Subclass this to provide a customized response or more advanced handling (e.g. emailing of errors).'!
!WAHtmlHaltAndErrorHandler categoriesForClass!Unclassified! !
!WAHtmlHaltAndErrorHandler class methodsFor!

exceptionSelector
	#toDo. "Wee need halt as a first class Object?"
	^ super exceptionSelector ", Halt"! !
!WAHtmlHaltAndErrorHandler class categoriesFor: #exceptionSelector!exception handling!public! !

