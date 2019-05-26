"Filed out from Dolphin Smalltalk 7"!

WARenderLoopContinuation subclass: #WAActionPhaseContinuation
	instanceVariableNames: 'renderContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAActionPhaseContinuation guid: (GUID fromString: '{e0870395-21d7-4f13-9e55-9cafeaf1b999}')!
WAActionPhaseContinuation comment: ''!
!WAActionPhaseContinuation categoriesForClass!Seaside-RenderLoop! !
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
!WAActionPhaseContinuation categoriesFor: #basicPerformAction!processing!public! !
!WAActionPhaseContinuation categoriesFor: #continue!processing!public! !
!WAActionPhaseContinuation categoriesFor: #handleFiltered:!handling!public! !
!WAActionPhaseContinuation categoriesFor: #initializeWithSnapshot:renderContext:!initialization!public! !
!WAActionPhaseContinuation categoriesFor: #performAction!processing!public! !
!WAActionPhaseContinuation categoriesFor: #renderContext!accessing!public! !
!WAActionPhaseContinuation categoriesFor: #renderContext:!accessing!public! !
!WAActionPhaseContinuation categoriesFor: #shouldRedirect!private! !
!WAActionPhaseContinuation categoriesFor: #startTasks!private! !

!WAActionPhaseContinuation class methodsFor!

defaultRenderContext	^ nil!

isActionContinuation	^ true!

snapshot: aSnapshot	^ self snapshot: aSnapshot renderContext: self defaultRenderContext!

snapshot: aSnapshot renderContext: aRenderContext	^ self basicNew		initializeWithSnapshot: aSnapshot renderContext: aRenderContext;		yourself! !
!WAActionPhaseContinuation class categoriesFor: #defaultRenderContext!private! !
!WAActionPhaseContinuation class categoriesFor: #isActionContinuation!public!testing! !
!WAActionPhaseContinuation class categoriesFor: #snapshot:!instance creation!public! !
!WAActionPhaseContinuation class categoriesFor: #snapshot:renderContext:!instance creation!public! !

