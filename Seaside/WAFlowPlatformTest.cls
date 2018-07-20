"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAFlowPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFlowPlatformTest guid: (GUID fromString: '{d36b5a66-db76-4a64-8071-e46601c09842}')!
WAFlowPlatformTest comment: ''!
!WAFlowPlatformTest categoriesForClass!Seaside-Tests-Flow-Unit! !
!WAFlowPlatformTest methodsFor!

evaluateCallbackContinuation: aContinuation with: anObject	| callback |	callback := WAActionCallback new.	callback block: [ aContinuation value: anObject ].	[ callback evaluateWithArgument: nil ]		on: WARenderNotification do: [ :n | ]!

testSuspendCallbackDo	| continuation result |	continuation := nil.	self withCallbackContinuationDo: [ :cc | continuation := cc ] resultBlock: [ :r | result := r ].	self assert: continuation notNil.	self evaluateCallbackContinuation: continuation with: 123.	self assert: result = 123!

withCallbackContinuationDo: ccBlock resultBlock: resultBlock 	| callback |	callback := WAActionCallback new.	callback block: [ resultBlock value: (GRPlatform current seasideSuspendFlowDo: ccBlock) ].	[ callback evaluateWithArgument: nil ] 		on: WARenderNotification		do: [ :n |  ]! !
!WAFlowPlatformTest categoriesFor: #evaluateCallbackContinuation:with:!private! !
!WAFlowPlatformTest categoriesFor: #testSuspendCallbackDo!public!tests! !
!WAFlowPlatformTest categoriesFor: #withCallbackContinuationDo:resultBlock:!private! !

