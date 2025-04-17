"Filed out from Dolphin Smalltalk"!

WAConfiguredRequestFilter subclass: #WAExceptionFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExceptionFilter guid: (GUID fromString: '{4a54d737-794d-40eb-8b35-a67799575c6e}')!

WAExceptionFilter comment: ''!

!WAExceptionFilter categoriesForClass!Filter! !

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

