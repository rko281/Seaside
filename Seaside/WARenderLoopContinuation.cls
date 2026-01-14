"Filed out from Dolphin Smalltalk"!

WASessionContinuation subclass: #WARenderLoopContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderLoopContinuation guid: (GUID fromString: '{d8c347b9-b5ab-43b7-9411-d47f8835ae8b}')!

WARenderLoopContinuation comment: ''!

!WARenderLoopContinuation categoriesForClass!Seaside-RenderLoop-Continuations! !

!WARenderLoopContinuation methodsFor!

actionPhaseContinuationClass	^ (self application preferenceAt: #actionPhaseContinuationClass) value!

createActionContinuation	"Answer a new action phase continuation."	^ self actionPhaseContinuationClass snapshot: self states!

createActionContinuationWithContext: aRenderContext	"Answer a new action phase continuation."	^ self actionPhaseContinuationClass snapshot: self states renderContext: aRenderContext!

createRenderContinuation	"Answer a new render phase continuation."	^ (self application preferenceAt: #renderPhaseContinuationClass) value new!

isActionContinuation	^ self class isActionContinuation!

isRenderContinuation	^ self class isRenderContinuation!

presenter	"Answer the root presenter instance for the current session."	^ self session presenter!

scriptGeneratorClass	^ (self application preferenceAt: #scriptGeneratorClass) value!

toPresenterSendRoot: anHtmlRoot	(WAVisiblePresenterGuide client:		(WAUpdateRootVisitor root: anHtmlRoot))		start: self presenter!

updateRoot: anHtmlRoot	| charSet |	charSet := self application contentType charSet.	charSet isNil ifFalse: [		anHtmlRoot meta charset: charSet ].	anHtmlRoot beHtml5.	anHtmlRoot title: 'Seaside'.	self application libraries 		do: [ :each | each default updateRoot: anHtmlRoot ].	self session updateRoot: anHtmlRoot!

updateStates: aSnapshot	super updateStates: aSnapshot.	(WAAllPresenterGuide client:		(WAUpdateStatesVisitor snapshot: aSnapshot))		start: self presenter!

updateUrl: aUrl	super updateUrl: aUrl.	(WAVisiblePresenterGuide client: (WAUpdateUrlVisitor url: aUrl))		start: self presenter!

withNotificationHandlerDo: aBlock	| currentHandler |	currentHandler := WACurrentExceptionHandler value.	^ currentHandler isNil		ifTrue: [			aBlock on: WARenderNotification do: [ :n | ] ]		ifFalse: [			"For platforms with ANSI exceptions we have to nest exception handlers						with ANSI exceptions			When signaling an exception from an exception handler block the look up of			the new exception handler starts in the exception handler block.						without ANSI exceptions			When signaling an exception from an exception handler block the look up of			the new exception handler starts where the original exception was signaled.						platforms without ANSI exceptions: Pharo<4, Squeak, GS2.x			platforms with ANSI exception: Pharo>=4, VAST, VW, GS3.x"			[ currentHandler handleExceptionsDuring: aBlock ]				on: WARenderNotification				 do: [ :n | ] ]! !

!WARenderLoopContinuation categoriesForMethods!
actionPhaseContinuationClass!private! !
createActionContinuation!private! !
createActionContinuationWithContext:!private! !
createRenderContinuation!private! !
isActionContinuation!public!testing! !
isRenderContinuation!public!testing! !
presenter!accessing!public! !
scriptGeneratorClass!private! !
toPresenterSendRoot:!public!updating! !
updateRoot:!public!updating! !
updateStates:!public!updating! !
updateUrl:!public!updating! !
withNotificationHandlerDo:!private! !
!

!WARenderLoopContinuation class methodsFor!

isActionContinuation	^ false!

isRenderContinuation	^ false!

isRenderLoopContinuation	^ true! !

!WARenderLoopContinuation class categoriesForMethods!
isActionContinuation!public!testing! !
isRenderContinuation!public!testing! !
isRenderLoopContinuation!public!testing! !
!

