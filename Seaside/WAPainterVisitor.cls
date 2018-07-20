"Filed out from Dolphin Smalltalk 7"!

WAVisitor subclass: #WAPainterVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPainterVisitor guid: (GUID fromString: '{48bc9043-97c7-4625-adac-0775d057544d}')!
WAPainterVisitor comment: 'An implementation of the Visitor pattern for Painter subclasses.'!
!WAPainterVisitor categoriesForClass!Seaside-Core-Rendering! !
!WAPainterVisitor methodsFor!

copyForRenderContext: aRenderContext 	"Return a copy, making sure that references to a RenderContext are replaced	with aRenderContext."		^ self copy		postCopyForRenderContext: aRenderContext;		yourself!

postCopyForRenderContext: aRenderContext	"self is a shallow copy. Subclasses should copy fields as necessary to complete	the full copy and ensure that all references to the old RenderContext are replaced	with aRenderContext. Note that #postCopy is also called prior to this method being called."!

visitPainter: aPainter! !
!WAPainterVisitor categoriesFor: #copyForRenderContext:!copying!public! !
!WAPainterVisitor categoriesFor: #postCopyForRenderContext:!copying!public! !
!WAPainterVisitor categoriesFor: #visitPainter:!public!visiting! !

