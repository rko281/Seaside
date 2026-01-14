"Filed out from Dolphin Smalltalk"!

WAActionPhaseContinuation subclass: #WACallbackProcessingActionContinuation
	instanceVariableNames: 'jumpTo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACallbackProcessingActionContinuation guid: (GUID fromString: '{e8c1d46a-45e9-48ab-b76a-15f77977521e}')!

WACallbackProcessingActionContinuation comment: ''!

!WACallbackProcessingActionContinuation categoriesForClass!Seaside-RenderLoop-Continuations! !

!WACallbackProcessingActionContinuation methodsFor!

basicPerformAction	super basicPerformAction.	self renderContext callbacks handle: self requestContext!

jumpToAnchor: aString	jumpTo := aString!

performAction	"Ajax requests modify the captured state - though this behaviour has been heavily debated"	[ super performAction ] ensure: [		self request isXmlHttpRequest ifTrue: [ self captureState ] ]!

redirectToContinuation: aSessionContinuation	self respond: [ :response |		| url |		url := aSessionContinuation registerForUrl.		jumpTo isNil ifFalse: [			url fragment: jumpTo ].		response redirectTo: url ]! !

!WACallbackProcessingActionContinuation categoriesForMethods!
basicPerformAction!processing!public! !
jumpToAnchor:!public! !
performAction!processing!public! !
redirectToContinuation:!private! !
!

!WACallbackProcessingActionContinuation class methodsFor!

snapshot: aSnapshot renderContext: aRenderContext	aRenderContext isNil ifTrue: [ self error: 'Objects of this class require a RenderContext for callback processing.' ].	^ super snapshot: aSnapshot renderContext: aRenderContext! !

!WACallbackProcessingActionContinuation class categoriesForMethods!
snapshot:renderContext:!instance creation!public! !
!

