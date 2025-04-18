﻿"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAHaloVisitor
	instanceVariableNames: 'toolDecoration renderContext visitor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHaloVisitor guid: (GUID fromString: '{ae792879-7385-4525-b14f-e19b238fdb3d}')!

WAHaloVisitor comment: ''!

!WAHaloVisitor categoriesForClass!Core! !

!WAHaloVisitor methodsFor!

initializeWithToolDecoration: aToolDecoration renderContext: aRenderContext	self initialize.	toolDecoration := aToolDecoration.	renderContext := aRenderContext!

postCopyForRenderContext: aRenderContext	super postCopyForRenderContext: aRenderContext.	renderContext := aRenderContext.	visitor := visitor copyForRenderContext: aRenderContext!

renderContext	^ renderContext!

toolDecoration	^ toolDecoration!

visitor	^ visitor!

visitor: anObject	visitor := anObject!

visitPainter: aPainter 	| halo |	(self renderContext halosEnabled and: [ aPainter canHaveHalo ]) 		ifTrue: [			halo := self toolDecoration haloFor: aPainter.			halo renderWithContext: self renderContext visitor: visitor ]		ifFalse: [ visitor visit: aPainter ]! !

!WAHaloVisitor categoriesForMethods!
initializeWithToolDecoration:renderContext:!initialization!public! !
postCopyForRenderContext:!copying!public! !
renderContext!accessing!public! !
toolDecoration!accessing!public! !
visitor!accessing!public! !
visitor:!accessing!public! !
visitPainter:!public!visiting! !
!

!WAHaloVisitor class methodsFor!

decoration: aToolDecoration context: aRenderContext	^ self basicNew		initializeWithToolDecoration: aToolDecoration renderContext: aRenderContext;		yourself! !

!WAHaloVisitor class categoriesForMethods!
decoration:context:!instance creation!public! !
!

