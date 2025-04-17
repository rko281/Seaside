"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAFlowPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlowPlatformTest guid: (GUID fromString: '{0645f84f-2afe-47a3-8829-10f130ae7aa9}')!

WAFlowPlatformTest comment: ''!

!WAFlowPlatformTest categoriesForClass!Unit! !

!WAFlowPlatformTest methodsFor!

evaluateCallbackContinuation: aContinuation with: anObject	| callback |	callback := WAActionCallback new.	callback block: [ aContinuation value: anObject ].	[ callback evaluateWithArgument: nil ]		on: WARenderNotification do: [ :n | ]!

testSuspendCallbackDo	| continuation result |	continuation := nil.	self withCallbackContinuationDo: [ :cc | continuation := cc ] resultBlock: [ :r | result := r ].	self assert: continuation notNil.	self evaluateCallbackContinuation: continuation with: 123.	self assert: result = 123!

withCallbackContinuationDo: ccBlock resultBlock: resultBlock 	| callback |	callback := WAActionCallback new.	callback block: [ resultBlock value: (GRPlatform current seasideSuspendFlowDo: ccBlock) ].	[ callback evaluateWithArgument: nil ] 		on: WARenderNotification		do: [ :n |  ]! !

!WAFlowPlatformTest categoriesForMethods!
evaluateCallbackContinuation:with:!private! !
testSuspendCallbackDo!public!tests! !
withCallbackContinuationDo:resultBlock:!private! !
!

