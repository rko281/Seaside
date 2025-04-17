"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WAExceptionFilterConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExceptionFilterConfiguration guid: (GUID fromString: '{eb3b0bf3-9950-454e-af4f-57979a4fd173}')!

WAExceptionFilterConfiguration comment: ''!

!WAExceptionFilterConfiguration categoriesForClass!Filter! !

!WAExceptionFilterConfiguration methodsFor!

describeOn: config	(config list: #exceptionHandler)		options: [ self exceptionHandlerClasses ];		default: WAErrorHandler!

exceptionHandlerClasses	^ WAExceptionHandler withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]! !

!WAExceptionFilterConfiguration categoriesForMethods!
describeOn:!description!public! !
exceptionHandlerClasses!description!public! !
!

