"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WARenderLoopContinuationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderLoopContinuationTest guid: (GUID fromString: '{f26f6766-8696-4692-a6d7-1516029048fe}')!

WARenderLoopContinuationTest comment: ''!

!WARenderLoopContinuationTest categoriesForClass!Seaside-Tests-RenderLoop! !

!WARenderLoopContinuationTest methodsFor!

testExceptionHandlerNesting	| continuation handler |	"https://github.com/SeasideSt/googlecode-seaside-export/issues/636"	continuation := WARenderLoopContinuation new.	handler := WASignalingErrorHandler new.	self		shouldnt:  [				continuation withNotificationHandlerDo: [					handler handleExceptionsDuring: [						WAError signal: 'Testing 1, 2, 3' ] ] ]		raise: WARenderNotification! !

!WARenderLoopContinuationTest categoriesForMethods!
testExceptionHandlerNesting!public!tests! !
!

