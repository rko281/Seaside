﻿"Filed out from Dolphin Smalltalk 7"!

WADebugErrorHandler subclass: #WAWalkbackErrorHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'configuredExceptionHandlingDefaults'!
WAWalkbackErrorHandler guid: (GUID fromString: '{585f3b79-0726-46c6-8207-ad6388787988}')!
WAWalkbackErrorHandler comment: 'I am the default development error handler that displays the stack frames and adds the option to display a debugger.I delegate the rendering to WAWalkback.This handler uses Components and depends on having a valid Session. If an error occurs outside of the Session scope it will simply use the superclass behaviour, which should be to open a debugger.'!
!WAWalkbackErrorHandler categoriesForClass!Seaside-Development-Core! !
!WAWalkbackErrorHandler methodsFor!

handleDefault: anException	^ self open: anException!

open: anException 	self requestContext request isXmlHttpRequest		ifTrue: [ ^ super open: anException ].	self shouldCall		ifTrue: [ self openUsingCall: anException ]		ifFalse: [ self openUsingDirectRendering: anException ]!

openUsingCall: anException	"If an error occurs trying to display the walkback component, we just use the super	behaviour, which should be to open a debugger.."	| answer |	answer := true.	[ self session isNil ifFalse:  [		answer := self session presenter call: (WAWalkback current exception: anException).		"Exception handlers hold the request context because they are used in places where		the dynamic variable is not present. Since this particular class depends on RenderLoop,		however, it will be present and we need to update the stored value after doing a call."		requestContext := WACurrentRequestContext value ] ] 		on: Error		do: [ :err | answer := true ].	answer ifTrue: [ super open: anException ]!

openUsingDirectRendering: anException	| debugAction |	"we pressed the debug link,	we intentionally don't reset otherwise we'd loose the response	up to now when proceed is pressed in the debugger"	debugAction := self requestContext request at: '_debugAction' ifAbsent: [ nil ].	debugAction = '_debug'		ifTrue: [ ^ super open: anException ].	debugAction = '_proceed'		ifTrue: [ ^ self basicResume: anException ].	self requestContext response resetIfPossible		ifTrue: [			| fullStack renderer |			fullStack := debugAction = '_fullStack'.						renderer := WAWalkback current exception: anException.			fullStack ifTrue: [ renderer showFullStack ].						self requestContext respond: [ :response  |				"set to HTML and set encoding"				response					contentType: self application contentType;					nextPutAll: (WAHtmlCanvas builder						fullDocument: true;						rootBlock: [ :root | renderer updateRoot: root ];						render: renderer)  ] ]		ifFalse: [			"we could not reset the response so we just open a debugger (similar to XmlHttpRequest)"			super open: anException ]!

shouldCall	"WAWalkback would like to resubmit the same URL with different parameters.	This doesn't for POST (we lose the request body) so we #call: in these cases."	^ self session notNil		and: [ self requestContext request isPost ]! !
!WAWalkbackErrorHandler categoriesFor: #handleDefault:!actions!public! !
!WAWalkbackErrorHandler categoriesFor: #open:!actions!public! !
!WAWalkbackErrorHandler categoriesFor: #openUsingCall:!actions!public! !
!WAWalkbackErrorHandler categoriesFor: #openUsingDirectRendering:!actions!public! !
!WAWalkbackErrorHandler categoriesFor: #shouldCall!private! !

!WAWalkbackErrorHandler class methodsFor!

configureApplicationExceptionHandlingDefaults	(configuredExceptionHandlingDefaults ifNil: [ false ]) ifFalse: [		WAAdmin applicationExceptionHandlingDefaults			at: #exceptionHandler put: self.		configuredExceptionHandlingDefaults := true ]!

initialize	self configureApplicationExceptionHandlingDefaults! !
!WAWalkbackErrorHandler class categoriesFor: #configureApplicationExceptionHandlingDefaults!class initialization!public! !
!WAWalkbackErrorHandler class categoriesFor: #initialize!class initialization!public! !

