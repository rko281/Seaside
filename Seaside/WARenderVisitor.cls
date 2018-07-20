"Filed out from Dolphin Smalltalk 7"!

WAPainterVisitor subclass: #WARenderVisitor
	instanceVariableNames: 'renderContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARenderVisitor guid: (GUID fromString: '{805616a5-d206-4d3f-afdc-e4e757881dc9}')!
WARenderVisitor comment: 'A visitor that renders Painters. It creates an instance of the #rendererClass specified by each Painter it visits and passes it to the Painter with #renderContentOn:.'!
!WARenderVisitor categoriesForClass!Seaside-Core-Rendering! !
!WARenderVisitor methodsFor!

initializeWithContext: aRenderContext	self initialize.	renderContext := aRenderContext!

postCopyForRenderContext: aRenderContext	super postCopyForRenderContext: aRenderContext.	renderContext := aRenderContext!

renderContext	^ renderContext!

visitPainter: aPainter 	| renderer |	renderer := aPainter rendererClass context: self renderContext.	aPainter renderContentOn: renderer.	renderer flush! !
!WARenderVisitor categoriesFor: #initializeWithContext:!initialization!public! !
!WARenderVisitor categoriesFor: #postCopyForRenderContext:!copying!public! !
!WARenderVisitor categoriesFor: #renderContext!accessing!public! !
!WARenderVisitor categoriesFor: #visitPainter:!public!visiting! !

!WARenderVisitor class methodsFor!

context: aRenderContext	^ self basicNew		initializeWithContext: aRenderContext;		yourself! !
!WARenderVisitor class categoriesFor: #context:!instance creation!public! !

