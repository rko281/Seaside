"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WARenderLoopContinuationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARenderLoopContinuationTest guid: (GUID fromString: '{4d6adc50-2d04-42bc-b1f1-ff9f4e52cf90}')!
WARenderLoopContinuationTest comment: ''!
!WARenderLoopContinuationTest categoriesForClass!Seaside-Tests-RenderLoop! !
!WARenderLoopContinuationTest methodsFor!

testExceptionHandlerNesting	| continuation handler |	"https://github.com/SeasideSt/googlecode-seaside-export/issues/636"	continuation := WARenderLoopContinuation new.	handler := WASignalingErrorHandler new.	self		shouldnt:  [				continuation withNotificationHandlerDo: [					handler handleExceptionsDuring: [						WAError signal: 'Testing 1, 2, 3' ] ] ]		raise: WARenderNotification! !
!WARenderLoopContinuationTest categoriesFor: #testExceptionHandlerNesting!public!tests! !

