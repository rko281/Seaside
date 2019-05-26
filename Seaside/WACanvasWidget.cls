"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WACanvasWidget
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACanvasWidget guid: (GUID fromString: '{90ce1561-8133-4685-82fe-2d7b42d88948}')!
WACanvasWidget comment: 'A common superclass for all widgets that want to use WAHtmlCanvas as their renderer.'!
!WACanvasWidget categoriesForClass!Seaside-Widgets-Components! !
!WACanvasWidget methodsFor!

rendererClass	"Make sure we use WAHtmlCanvas even if a different renderer is default."	^ WAHtmlCanvas! !
!WACanvasWidget categoriesFor: #rendererClass!public!rendering! !

