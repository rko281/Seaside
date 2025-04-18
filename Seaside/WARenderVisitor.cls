﻿"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WARenderVisitor
	instanceVariableNames: 'renderContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderVisitor guid: (GUID fromString: '{7160b4ac-ec9b-48bc-bb02-b271b22f7723}')!

WARenderVisitor comment: 'A visitor that renders Painters. It creates an instance of the #rendererClass specified by each Painter it visits and passes it to the Painter with #renderContentOn:.'!

!WARenderVisitor categoriesForClass!Rendering! !

!WARenderVisitor methodsFor!

initializeWithContext: aRenderContext	self initialize.	renderContext := aRenderContext!

postCopyForRenderContext: aRenderContext	super postCopyForRenderContext: aRenderContext.	renderContext := aRenderContext!

renderContext	^ renderContext!

visitPainter: aPainter 	| renderer |	renderer := aPainter rendererClass context: self renderContext.	aPainter renderContentOn: renderer.	renderer flush! !

!WARenderVisitor categoriesForMethods!
initializeWithContext:!initialization!public! !
postCopyForRenderContext:!copying!public! !
renderContext!accessing!public! !
visitPainter:!public!visiting! !
!

!WARenderVisitor class methodsFor!

context: aRenderContext	^ self basicNew		initializeWithContext: aRenderContext;		yourself! !

!WARenderVisitor class categoriesForMethods!
context:!instance creation!public! !
!

