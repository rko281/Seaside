"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WACanvasWidget
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACanvasWidget guid: (GUID fromString: '{ecfa67d1-04a4-4041-9a61-6cf27c44a85b}')!

WACanvasWidget comment: 'A common superclass for all widgets that want to use WAHtmlCanvas as their renderer.'!

!WACanvasWidget categoriesForClass!Components! !

!WACanvasWidget methodsFor!

rendererClass	"Make sure we use WAHtmlCanvas even if a different renderer is default."	^ WAHtmlCanvas! !

!WACanvasWidget categoriesForMethods!
rendererClass!public!rendering! !
!

