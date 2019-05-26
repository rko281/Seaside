"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAExceptionHandler
	instanceVariableNames: 'requestContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExceptionHandler guid: (GUID fromString: '{94e54493-8259-4112-b3b7-e9b4b2a91ec9}')!
WAExceptionHandler comment: 'Exception handlers are invoked when an error in a Seaside application occurs. Request handlers can use the class-side method #handleExceptionsDuring: to set up exception handlers around a block of code.== Catching ==Exception handlers can configure which exceptions they want to catch by overriding the class-side method #exceptionsToCatch. They may also choose to override #handleExceptionsDuring: on the class-side directly, if they need more complex behaviour.== Handling ==Handling behaviour is implemented on the instance side by implementing #handleException:. This method should return a suitable seaside response (usually an instance of WAResponse) if it returns.== Internal Errors ==Internal errors are typically errors that occur while trying to execute one of the other error handlers and should be as basic as possible to ensure they don''t have any trouble executing. Request handlers can ask for an internal error response by calling #internalError: on the class-side of an exception handler.== HTML Responses ==See WAWalkbackErrorHandler in the development packages for examples of how to do rendering with the canvas API.'!
!WAExceptionHandler categoriesForClass!Seaside-Core-RequestHandling! !
!WAExceptionHandler methodsFor!

, anException	^ self class, anException!

handleException: anException	"If for some reason we are asked to handle an exception for which we have no	handling behaviour defined, just pass."		^ anException pass!

handleExceptionsDuring: aBlock	^ aBlock		on: self		do: [ :exception | 			[ self handleException: exception ]				"If there's an error while handling the exception, fall				back on an internal error response."				on: Error				do: [ :error | self internalError: error ] ] !

handles: anException	^ self class handles: anException!

initializeWithContext: aRequestContext	self initialize.	requestContext := aRequestContext!

internalError: anError 	"This method should not call #handleException: because subclasses want to modify the behaviour for for other exceptions without changing the simple fallback internal error behaviour."		self requestContext responseGenerator		internalError: anError;		respond!

requestContext	"Exception handlers are created with a request context because they may	often be running where WACurrentRequestContext is either undefined or	unused."	^ requestContext! !
!WAExceptionHandler categoriesFor: #,!ansi/exception/selector!public! !
!WAExceptionHandler categoriesFor: #handleException:!actions!public! !
!WAExceptionHandler categoriesFor: #handleExceptionsDuring:!actions!public! !
!WAExceptionHandler categoriesFor: #handles:!ansi/exception/selector!public! !
!WAExceptionHandler categoriesFor: #initializeWithContext:!initialization!public! !
!WAExceptionHandler categoriesFor: #internalError:!actions!public! !
!WAExceptionHandler categoriesFor: #requestContext!accessing!public! !

!WAExceptionHandler class methodsFor!

, anException 	"Create an exception set that includes all the exceptions we handle and the	one passed as a parameter."	^ self exceptionSelector, anException!

context: aRequestContext	^ self basicNew initializeWithContext: aRequestContext; yourself !

exceptionSelector	^ ExceptionSet new!

handleExceptionsDuring: aBlock context: aRequestContext	^ (self context: aRequestContext) handleExceptionsDuring: aBlock!

handles: anException 	"You should probably override #exceptionSelector instead of this method.	If you do need to override this method, make sure to override #, as well"	^ self exceptionSelector handles: anException!

internalError: anError context: aRequestContext	^ (self context: aRequestContext) internalError: anError!

new	^ self context: nil! !
!WAExceptionHandler class categoriesFor: #,!ansi/exception/selector!public! !
!WAExceptionHandler class categoriesFor: #context:!instance creation!public! !
!WAExceptionHandler class categoriesFor: #exceptionSelector!exception handling!public! !
!WAExceptionHandler class categoriesFor: #handleExceptionsDuring:context:!exception handling!public! !
!WAExceptionHandler class categoriesFor: #handles:!ansi/exception/selector!public! !
!WAExceptionHandler class categoriesFor: #internalError:context:!public!responding! !
!WAExceptionHandler class categoriesFor: #new!instance creation!public! !

