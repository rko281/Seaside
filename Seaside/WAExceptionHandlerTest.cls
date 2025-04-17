"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAExceptionHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExceptionHandlerTest guid: (GUID fromString: '{0095abf4-b704-47f4-885b-7774ff0cefb4}')!

WAExceptionHandlerTest comment: ''!

!WAExceptionHandlerTest categoriesForClass!RequestHandling! !

!WAExceptionHandlerTest methodsFor!

assertHandles: anObject	self assertHandles: anObject returnsSatisfying: [ :result | result ]!

assertHandles: anObject returnsSatisfying: aBlock 	| result instanceResult |	result := self handlerClass handles: anObject.	instanceResult := self createHandler handles: anObject.	self assert: result = instanceResult.	self assert: (aBlock value: result)!

createHandler	^ self handlerClass context: self createRequestContext!

createRequestContext	^ WARequestContext request: WARequest new response: WABufferedResponse new!

handlerClass	"The handler to test in this test case"	^ WAExceptionHandler!

testCommaReturnsExceptionSet	| set |	set := self handlerClass, WATestError.	self assert: (set isKindOf: ExceptionSet).	self assert: (set handles: WATestError new).		set := self createHandler, WATestError.	self assert: (set isKindOf: ExceptionSet).	self assert: (set handles: WATestError new)!

testHandlerClassValidExceptionSelector	"The ANSI standard specifies that an object must implement #handles: and #, in	order to be used as an 'exception selector' (that is, as the first paramter to #on:do:).	However, some platforms seem to require other protocol. This test will make sure	that each platform has implemented what is required to make this work."		[ [ self unhandledExceptionClass signal ]		on: self handlerClass		do: [ :exception | self assert: false ] ]			on: Exception			do: [ :exception | ^ self "test passed" ].			self assert: false "The method should have returned already"!

testHandlerInstanceValidExceptionSelector	"The ANSI standard specifies that an object must implement #handles: and #, in	order to be used as an 'exception selector' (that is, as the first paramter to #on:do:).	However, some platforms seem to require other protocol. This test will make sure	that each platform has implemented what is required to make this work."		[ [ self unhandledExceptionClass signal ]		on: self createHandler		do: [ :exception | self assert: false ] ]			on: Exception			do: [ :exception | ^ self "test passed" ].			self assert: false "The method should have returned already"!

testHandlesReturnsBool	self 		assertHandles: WATestError new		returnsSatisfying: [ :result | #(true false) includes: result ]!

testInternalError	| context |	context := self createRequestContext.	[ self handlerClass			internalError: (WATestError new)			context: context ]		on: WAResponseNotification		do: [ :n |			self assert: (context response isKindOf: WAResponse).			self assert: context response status = 500.			^ self ].			self assert: false!

testInternalErrorWithMessage	| context |	context := self createRequestContext.	[ self handlerClass			internalError: (WATestError new messageText: 'test'; yourself)			context: context ]		on: WAResponseNotification		do: [ :n |			self assert: (context response isKindOf: WAResponse).			self assert: context response status = 500.			^ self ].			self assert: false!

testUnhandledException	[ self handlerClass		handleExceptionsDuring: [ self unhandledExceptionClass signal ]		context: self requestContext ]			on: self unhandledExceptionClass			do: [ :exception | "success" ^ self ].		self assert: false!

unhandledExceptionClass	"An exception that is not handled by #handlerClass"	^ Exception! !

!WAExceptionHandlerTest categoriesForMethods!
assertHandles:!public!testing! !
assertHandles:returnsSatisfying:!public!testing! !
createHandler!accessing!public! !
createRequestContext!accessing!public! !
handlerClass!accessing!public! !
testCommaReturnsExceptionSet!public!testing! !
testHandlerClassValidExceptionSelector!public!testing! !
testHandlerInstanceValidExceptionSelector!public!testing! !
testHandlesReturnsBool!public!testing! !
testInternalError!public!testing! !
testInternalErrorWithMessage!public!testing! !
testUnhandledException!public!testing! !
unhandledExceptionClass!accessing!public! !
!

