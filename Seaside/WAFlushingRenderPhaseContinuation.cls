"Filed out from Dolphin Smalltalk"!

WARenderPhaseContinuation subclass: #WAFlushingRenderPhaseContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlushingRenderPhaseContinuation guid: (GUID fromString: '{b01c615d-d650-4d97-a1fa-f4676591d1ab}')!

WAFlushingRenderPhaseContinuation comment: 'I send #flush to the HTTP response (WAResponse) after HTML <head> element has been fully rendered and closed and the HTML <body> has been opened. This results in this part of the the HTML document being sent to the browser. This allows the browser to prefetch the resources (styles, scripts, ...) possibly resulting in faster page loads.This only works with a streaming server adapter, for example one using WAComboResponse.'!

!WAFlushingRenderPhaseContinuation categoriesForClass!Seaside-RenderLoop-Continuations! !

!WAFlushingRenderPhaseContinuation methodsFor!

documentOpened: aResponse	aResponse flush! !

!WAFlushingRenderPhaseContinuation categoriesForMethods!
documentOpened:!processing!public! !
!

