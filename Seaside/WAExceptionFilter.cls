"Filed out from Dolphin Smalltalk 7"!

WAConfiguredRequestFilter subclass: #WAExceptionFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExceptionFilter guid: (GUID fromString: '{325ca72a-ab61-4265-8e12-635dfc7c3d83}')!
WAExceptionFilter comment: ''!
!WAExceptionFilter categoriesForClass!Seaside-Core-Filter! !
!WAExceptionFilter methodsFor!

defaultConfiguration	^ WAUserConfiguration new		addParent: WAExceptionFilterConfiguration instance;		yourself!

exceptionHandler	^ self configuration at: #exceptionHandler!

handleFiltered: aRequestContext	| handler |	handler := self exceptionHandler context: aRequestContext.	handler handleExceptionsDuring: [		WACurrentExceptionHandler			use: handler			during: [ super handleFiltered: aRequestContext ] ]		!

isExceptionFilter	^ true! !
!WAExceptionFilter categoriesFor: #defaultConfiguration!configuration!public! !
!WAExceptionFilter categoriesFor: #exceptionHandler!configuration!public! !
!WAExceptionFilter categoriesFor: #handleFiltered:!processing!public! !
!WAExceptionFilter categoriesFor: #isExceptionFilter!public!testing! !

