"Filed out from Dolphin Smalltalk"!

WARenderLoopContinuation subclass: #WAActionPhaseContinuation
	instanceVariableNames: 'renderContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAActionPhaseContinuation guid: (GUID fromString: '{b3a43c0f-8087-4403-939e-ae7089c797d9}')!

WAActionPhaseContinuation comment: ''!

!WAActionPhaseContinuation categoriesForClass!Continuations! !

!WAActionPhaseContinuation methodsFor!

basicPerformAction	"Do nothing by default. Subclasses can override."!

continue	| renderContinuation |	renderContinuation := self createRenderContinuation.	renderContinuation captureState.	self shouldRedirect		ifTrue: [ self redirectToContinuation: renderContinuation ]		ifFalse: [ renderContinuation handle: self requestContext ]!

handleFiltered: aRequestContext	self performAction.	self continue!

initializeWithSnapshot: aSnapshot renderContext: aRenderContext	self initializeWithSnapshot: aSnapshot.	renderContext := aRenderContext!

performAction	self withNotificationHandlerDo: [ self basicPerformAction ].	self startTasks!

renderContext	^ renderContext!

renderContext: aRenderContext	renderContext := aRenderContext!

shouldRedirect	| request |	request := self request.	^ (request isGet and: [ request fields includesKey: '_n' ]) not!

startTasks	"Make sure that any new Tasks get executed"	(WAVisiblePresenterGuide client: WATaskVisitor new) start: self presenter! !

!WAActionPhaseContinuation categoriesForMethods!
basicPerformAction!processing!public! !
continue!processing!public! !
handleFiltered:!handling!public! !
initializeWithSnapshot:renderContext:!initialization!public! !
performAction!processing!public! !
renderContext!accessing!public! !
renderContext:!accessing!public! !
shouldRedirect!private! !
startTasks!private! !
!

!WAActionPhaseContinuation class methodsFor!

defaultRenderContext	^ nil!

isActionContinuation	^ true!

snapshot: aSnapshot	^ self snapshot: aSnapshot renderContext: self defaultRenderContext!

snapshot: aSnapshot renderContext: aRenderContext	^ self basicNew		initializeWithSnapshot: aSnapshot renderContext: aRenderContext;		yourself! !

!WAActionPhaseContinuation class categoriesForMethods!
defaultRenderContext!private! !
isActionContinuation!public!testing! !
snapshot:!instance creation!public! !
snapshot:renderContext:!instance creation!public! !
!

