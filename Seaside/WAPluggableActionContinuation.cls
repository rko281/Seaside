"Filed out from Dolphin Smalltalk 7"!

WAActionPhaseContinuation subclass: #WAPluggableActionContinuation
	instanceVariableNames: 'action'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPluggableActionContinuation guid: (GUID fromString: '{10b71362-f4b0-47a5-a3ca-131fa3ef28e5}')!
WAPluggableActionContinuation comment: 'This continuation executes an action (any class that implements #value or #value:). If possible, the renderContext is passed in as an argument. When the action is complete, if a response hasn''t been returned, control is passed to a render continuation.''Instance Variables:	action	<BlockClosure | BlockContext | GRDelayedSend | MessageSend | WAContinuation | WAPartialContinuation>'!
!WAPluggableActionContinuation categoriesForClass!Seaside-RenderLoop! !
!WAPluggableActionContinuation methodsFor!

basicPerformAction	^ action valueWithPossibleArguments: (Array with: renderContext)!

initializeWithSnapshot: aSnapshot renderContext: aRenderContext action: aValuable	self initializeWithSnapshot: aSnapshot renderContext: aRenderContext.	action := aValuable! !
!WAPluggableActionContinuation categoriesFor: #basicPerformAction!processing!public! !
!WAPluggableActionContinuation categoriesFor: #initializeWithSnapshot:renderContext:action:!initialization!public! !

!WAPluggableActionContinuation class methodsFor!

action: aValuable	^ self snapshot: self defaultSnapshot renderContext: self defaultRenderContext action: aValuable!

defaultAction	^ GRDelayedSend empty!

snapshot: aSnapshot renderContext: aRenderContext	^ self snapshot: aSnapshot renderContext: aRenderContext action: self defaultAction!

snapshot: aSnapshot renderContext: aRenderContext action: aValuable	^ self basicNew		initializeWithSnapshot: aSnapshot renderContext: aRenderContext action: aValuable;		yourself! !
!WAPluggableActionContinuation class categoriesFor: #action:!instance creation!public! !
!WAPluggableActionContinuation class categoriesFor: #defaultAction!private! !
!WAPluggableActionContinuation class categoriesFor: #snapshot:renderContext:!instance creation!public! !
!WAPluggableActionContinuation class categoriesFor: #snapshot:renderContext:action:!instance creation!public! !

