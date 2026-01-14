"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WAExceptionFilterConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExceptionFilterConfiguration guid: (GUID fromString: '{ea09c4f7-6084-4a91-9190-7bbce9968e8c}')!

WAExceptionFilterConfiguration comment: ''!

!WAExceptionFilterConfiguration categoriesForClass!Seaside-Core-Filter! !

!WAExceptionFilterConfiguration methodsFor!

describeOn: config	(config list: #exceptionHandler)		options: [ self exceptionHandlerClasses ];		default: WAErrorHandler!

exceptionHandlerClasses	^ WAExceptionHandler withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]! !

!WAExceptionFilterConfiguration categoriesForMethods!
describeOn:!description!public! !
exceptionHandlerClasses!description!public! !
!

