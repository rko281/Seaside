"Filed out from Dolphin Smalltalk"!

WAConfiguredRequestFilter subclass: #WAExceptionFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExceptionFilter guid: (GUID fromString: '{a299cb03-8fc8-498d-ad51-2c23dd4c13cd}')!

WAExceptionFilter comment: ''!

!WAExceptionFilter categoriesForClass!Seaside-Core-Filter! !

!WAExceptionFilter methodsFor!

defaultConfiguration	^ WAUserConfiguration new		addParent: WAExceptionFilterConfiguration instance;		yourself!

exceptionHandler	^ self configuration at: #exceptionHandler!

handleFiltered: aRequestContext	| handler |	handler := self exceptionHandler context: aRequestContext.	handler handleExceptionsDuring: [		WACurrentExceptionHandler			use: handler			during: [ super handleFiltered: aRequestContext ] ]!

isExceptionFilter	^ true! !

!WAExceptionFilter categoriesForMethods!
defaultConfiguration!configuration!public! !
exceptionHandler!configuration!public! !
handleFiltered:!processing!public! !
isExceptionFilter!public!testing! !
!

