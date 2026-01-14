"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WACanvasWidget
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACanvasWidget guid: (GUID fromString: '{3fb9ad44-a704-43a7-9894-b02a5f452def}')!

WACanvasWidget comment: 'A common superclass for all widgets that want to use WAHtmlCanvas as their renderer.'!

!WACanvasWidget categoriesForClass!Seaside-Widgets-Components! !

!WACanvasWidget methodsFor!

rendererClass	"Make sure we use WAHtmlCanvas even if a different renderer is default."	^ WAHtmlCanvas! !

!WACanvasWidget categoriesForMethods!
rendererClass!public!rendering! !
!

