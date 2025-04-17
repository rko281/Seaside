"Filed out from Dolphin Smalltalk"!

WAVisitor subclass: #WAPainterVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPainterVisitor guid: (GUID fromString: '{f02226e0-85af-4a6c-a261-70deb5e9bdd3}')!

WAPainterVisitor comment: 'An implementation of the Visitor pattern for Painter subclasses.'!

!WAPainterVisitor categoriesForClass!Rendering! !

!WAPainterVisitor methodsFor!

copyForRenderContext: aRenderContext 	"Return a copy, making sure that references to a RenderContext are replaced	with aRenderContext."		^ self copy		postCopyForRenderContext: aRenderContext;		yourself!

postCopyForRenderContext: aRenderContext	"self is a shallow copy. Subclasses should copy fields as necessary to complete	the full copy and ensure that all references to the old RenderContext are replaced	with aRenderContext. Note that #postCopy is also called prior to this method being called."!

visitPainter: aPainter! !

!WAPainterVisitor categoriesForMethods!
copyForRenderContext:!copying!public! !
postCopyForRenderContext:!copying!public! !
visitPainter:!public!visiting! !
!

