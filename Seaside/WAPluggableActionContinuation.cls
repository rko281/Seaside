"Filed out from Dolphin Smalltalk"!

WAActionPhaseContinuation subclass: #WAPluggableActionContinuation
	instanceVariableNames: 'action'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPluggableActionContinuation guid: (GUID fromString: '{f9f8cbfa-3b08-4c48-ab66-1eee623f4d68}')!

WAPluggableActionContinuation comment: 'This continuation executes an action (any class that implements #value or #value:). If possible, the renderContext is passed in as an argument. When the action is complete, if a response hasn''t been returned, control is passed to a render continuation.''Instance Variables:	action	<BlockClosure | BlockContext | GRDelayedSend | MessageSend | WAContinuation | WAPartialContinuation>'!

!WAPluggableActionContinuation categoriesForClass!Continuations! !

!WAPluggableActionContinuation methodsFor!

basicPerformAction	^ action valueWithPossibleArguments: (Array with: renderContext)!

initializeWithSnapshot: aSnapshot renderContext: aRenderContext action: aValuable	self initializeWithSnapshot: aSnapshot renderContext: aRenderContext.	action := aValuable! !

!WAPluggableActionContinuation categoriesForMethods!
basicPerformAction!processing!public! !
initializeWithSnapshot:renderContext:action:!initialization!public! !
!

!WAPluggableActionContinuation class methodsFor!

action: aValuable	^ self snapshot: self defaultSnapshot renderContext: self defaultRenderContext action: aValuable!

defaultAction	^ GRDelayedSend empty!

snapshot: aSnapshot renderContext: aRenderContext	^ self snapshot: aSnapshot renderContext: aRenderContext action: self defaultAction!

snapshot: aSnapshot renderContext: aRenderContext action: aValuable	^ self basicNew		initializeWithSnapshot: aSnapshot renderContext: aRenderContext action: aValuable;		yourself! !

!WAPluggableActionContinuation class categoriesForMethods!
action:!instance creation!public! !
defaultAction!private! !
snapshot:renderContext:!instance creation!public! !
snapshot:renderContext:action:!instance creation!public! !
!

