"Filed out from Dolphin Smalltalk 7"!

WASystemConfiguration subclass: #WAExceptionFilterConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExceptionFilterConfiguration guid: (GUID fromString: '{c1d16bbc-e5fa-4c55-973b-3b269ac4632a}')!
WAExceptionFilterConfiguration comment: ''!
!WAExceptionFilterConfiguration categoriesForClass!Seaside-Core-Filter! !
!WAExceptionFilterConfiguration methodsFor!

describeOn: config	(config list: #exceptionHandler)		options: [ self exceptionHandlerClasses ];		default: WAErrorHandler!

exceptionHandlerClasses	^ WAExceptionHandler withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]! !
!WAExceptionFilterConfiguration categoriesFor: #describeOn:!description!public! !
!WAExceptionFilterConfiguration categoriesFor: #exceptionHandlerClasses!description!public! !

