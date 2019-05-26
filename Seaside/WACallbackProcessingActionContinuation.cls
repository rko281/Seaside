"Filed out from Dolphin Smalltalk 7"!

WAActionPhaseContinuation subclass: #WACallbackProcessingActionContinuation
	instanceVariableNames: 'jumpTo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACallbackProcessingActionContinuation guid: (GUID fromString: '{090ffe55-ed58-4e4a-aa4a-d50cd254c0f3}')!
WACallbackProcessingActionContinuation comment: ''!
!WACallbackProcessingActionContinuation categoriesForClass!Seaside-RenderLoop! !
!WACallbackProcessingActionContinuation methodsFor!

basicPerformAction	super basicPerformAction.	self renderContext callbacks handle: self requestContext!

jumpToAnchor: aString	jumpTo := aString!

performAction	"Ajax requests modify the captured state - though this behaviour has been heavily debated"	[ super performAction ] ensure: [		self request isXmlHttpRequest ifTrue: [ self captureState ] ]!

redirectToContinuation: aSessionContinuation	self respond: [ :response |		| url |		url := aSessionContinuation registerForUrl.		jumpTo isNil ifFalse: [			url fragment: jumpTo ].		response redirectTo: url ]! !
!WACallbackProcessingActionContinuation categoriesFor: #basicPerformAction!processing!public! !
!WACallbackProcessingActionContinuation categoriesFor: #jumpToAnchor:!public! !
!WACallbackProcessingActionContinuation categoriesFor: #performAction!processing!public! !
!WACallbackProcessingActionContinuation categoriesFor: #redirectToContinuation:!private! !

!WACallbackProcessingActionContinuation class methodsFor!

snapshot: aSnapshot renderContext: aRenderContext	aRenderContext isNil ifTrue: [ self error: 'Objects of this class require a RenderContext for callback processing.' ].	^ super snapshot: aSnapshot renderContext: aRenderContext! !
!WACallbackProcessingActionContinuation class categoriesFor: #snapshot:renderContext:!instance creation!public! !

