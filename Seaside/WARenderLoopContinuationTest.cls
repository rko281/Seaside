"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WARenderLoopContinuationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderLoopContinuationTest guid: (GUID fromString: '{6d40f693-82c2-42e9-aab1-f7e6bb1f8487}')!

WARenderLoopContinuationTest comment: ''!

!WARenderLoopContinuationTest categoriesForClass!Unclassified! !

!WARenderLoopContinuationTest methodsFor!

testExceptionHandlerNesting	| continuation handler |	"https://github.com/SeasideSt/googlecode-seaside-export/issues/636"	continuation := WARenderLoopContinuation new.	handler := WASignalingErrorHandler new.	self		shouldnt:  [				continuation withNotificationHandlerDo: [					handler handleExceptionsDuring: [						WAError signal: 'Testing 1, 2, 3' ] ] ]		raise: WARenderNotification! !

!WARenderLoopContinuationTest categoriesForMethods!
testExceptionHandlerNesting!public!tests! !
!

