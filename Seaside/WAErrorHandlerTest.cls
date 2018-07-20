"Filed out from Dolphin Smalltalk 7"!

WAExceptionHandlerTest subclass: #WAErrorHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAErrorHandlerTest guid: (GUID fromString: '{625b8e76-a7bc-4cd0-a26a-3ab610b154f2}')!
WAErrorHandlerTest comment: ''!
!WAErrorHandlerTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WAErrorHandlerTest methodsFor!

handlerClass	^ WAErrorHandler!

testError	| context |	context := self createRequestContext.	[ self handlerClass		handleExceptionsDuring: [ WAError signal ]		context: context ]			on: WAResponseNotification			do: [ :n | self assert: context response status = 500. ^ self ].				self assert: false!

testHandlesError	self assert: (self handlerClass handles: Error new).	self assert: (self createHandler handles: Error new)!

testHandlesWarning	self assert: (self handlerClass handles: Warning new).	self assert: (self createHandler handles: Warning new)!

testWarning	| context |	context := self createRequestContext.	[ self handlerClass		handleExceptionsDuring: [ Warning signal ]		context: context ]			on: WAResponseNotification			do: [ :n | self assert: context response status = 500. ^ self ].				self assert: false! !
!WAErrorHandlerTest categoriesFor: #handlerClass!accessing!public! !
!WAErrorHandlerTest categoriesFor: #testError!public!tests! !
!WAErrorHandlerTest categoriesFor: #testHandlesError!public!tests! !
!WAErrorHandlerTest categoriesFor: #testHandlesWarning!public!tests! !
!WAErrorHandlerTest categoriesFor: #testWarning!public!tests! !

!WAErrorHandlerTest class methodsFor!

shouldInheritSelectors	^ true! !
!WAErrorHandlerTest class categoriesFor: #shouldInheritSelectors!public!testing! !

