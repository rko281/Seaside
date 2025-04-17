"Filed out from Dolphin Smalltalk"!

WAExceptionHandlerTest subclass: #WAErrorHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAErrorHandlerTest guid: (GUID fromString: '{a6c18b8d-41d7-43b7-8db0-689fa93829fc}')!

WAErrorHandlerTest comment: ''!

!WAErrorHandlerTest categoriesForClass!RequestHandling! !

!WAErrorHandlerTest methodsFor!

handlerClass	^ WAErrorHandler!

testError	| context |	context := self createRequestContext.	[ self handlerClass		handleExceptionsDuring: [ WAError signal ]		context: context ]			on: WAResponseNotification			do: [ :n | self assert: context response status = 500. ^ self ].				self assert: false!

testHandlesError	self assert: (self handlerClass handles: Error new).	self assert: (self createHandler handles: Error new)!

testHandlesWarning	self assert: (self handlerClass handles: Warning new).	self assert: (self createHandler handles: Warning new)!

testWarning	| context |	context := self createRequestContext.	[ self handlerClass		handleExceptionsDuring: [ Warning signal ]		context: context ]			on: WAResponseNotification			do: [ :n | self assert: context response status = 500. ^ self ].				self assert: false! !

!WAErrorHandlerTest categoriesForMethods!
handlerClass!accessing!public! !
testError!public!tests! !
testHandlesError!public!tests! !
testHandlesWarning!public!tests! !
testWarning!public!tests! !
!

!WAErrorHandlerTest class methodsFor!

shouldInheritSelectors	^ true! !

!WAErrorHandlerTest class categoriesForMethods!
shouldInheritSelectors!public!testing! !
!

