"Filed out from Dolphin Smalltalk"!

WARenderPhaseContinuation subclass: #WAFlushingRenderPhaseContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlushingRenderPhaseContinuation guid: (GUID fromString: '{55a0dfd9-006a-459d-ba30-2774ecaf22a7}')!

WAFlushingRenderPhaseContinuation comment: 'I send #flush to the HTTP response (WAResponse) after HTML <head> element has been fully rendered and closed and the HTML <body> has been opened. This results in this part of the the HTML document being sent to the browser. This allows the browser to prefetch the resources (styles, scripts, ...) possibly resulting in faster page loads.This only works with a streaming server adapter, for example one using WAComboResponse.'!

!WAFlushingRenderPhaseContinuation categoriesForClass!Continuations! !

!WAFlushingRenderPhaseContinuation methodsFor!

documentOpened: aResponse	aResponse flush! !

!WAFlushingRenderPhaseContinuation categoriesForMethods!
documentOpened:!processing!public! !
!

