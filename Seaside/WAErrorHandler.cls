"Filed out from Dolphin Smalltalk"!

WAExceptionHandler subclass: #WAErrorHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAErrorHandler guid: (GUID fromString: '{665ba5e4-7ee8-469b-a69b-5fcb42a474c9}')!

WAErrorHandler comment: 'WAErrorHandler catches Errors and Warnings and provides two methods for handling each type of exception:handleError:handleWarning:If either method is not implemented, the default implementation will call #handleDefault:, which can be used to provide common behaviour for both exception types.'!

!WAErrorHandler categoriesForClass!Seaside-Core-RequestHandling! !

!WAErrorHandler methodsFor!

handleDefault: anException	"This method provides the default behaviour if subclasses do	not implement one of the specific handler methods."	^ self internalError: anException!

handleError: anError	^ self handleDefault: anError!

handleException: anException	(Error handles: anException)		ifTrue: [ ^ self handleError: anException ].	(Warning handles: anException)		ifTrue: [ ^ self handleWarning: anException ].	^ super handleException: anException!

handleWarning: aWarning	^ self handleDefault: aWarning! !

!WAErrorHandler categoriesForMethods!
handleDefault:!actions!public! !
handleError:!actions!public! !
handleException:!actions!public! !
handleWarning:!actions!public! !
!

!WAErrorHandler class methodsFor!

exceptionSelector	^ super exceptionSelector, Error, Warning! !

!WAErrorHandler class categoriesForMethods!
exceptionSelector!exception handling!public! !
!

