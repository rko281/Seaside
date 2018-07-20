"Filed out from Dolphin Smalltalk 7"!

WAPainterVisitor subclass: #WAHaloVisitor
	instanceVariableNames: 'toolDecoration renderContext visitor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHaloVisitor guid: (GUID fromString: '{19f29d2d-1865-4d4b-bfc9-3a1822abefd1}')!
WAHaloVisitor comment: ''!
!WAHaloVisitor categoriesForClass!Seaside-Development-Core! !
!WAHaloVisitor methodsFor!

initializeWithToolDecoration: aToolDecoration renderContext: aRenderContext	self initialize.	toolDecoration := aToolDecoration.	renderContext := aRenderContext!

postCopyForRenderContext: aRenderContext	super postCopyForRenderContext: aRenderContext.	renderContext := aRenderContext.	visitor := visitor copyForRenderContext: aRenderContext!

renderContext	^ renderContext!

toolDecoration	^ toolDecoration!

visitor	^ visitor!

visitor: anObject	visitor := anObject!

visitPainter: aPainter 	| halo |	(self renderContext halosEnabled and: [ aPainter canHaveHalo ]) 		ifTrue: [			halo := self toolDecoration haloFor: aPainter.			halo renderWithContext: self renderContext visitor: visitor ]		ifFalse: [ visitor visit: aPainter ]	! !
!WAHaloVisitor categoriesFor: #initializeWithToolDecoration:renderContext:!initialization!public! !
!WAHaloVisitor categoriesFor: #postCopyForRenderContext:!copying!public! !
!WAHaloVisitor categoriesFor: #renderContext!accessing!public! !
!WAHaloVisitor categoriesFor: #toolDecoration!accessing!public! !
!WAHaloVisitor categoriesFor: #visitor!accessing!public! !
!WAHaloVisitor categoriesFor: #visitor:!accessing!public! !
!WAHaloVisitor categoriesFor: #visitPainter:!public!visiting! !

!WAHaloVisitor class methodsFor!

decoration: aToolDecoration context: aRenderContext	^ self basicNew		initializeWithToolDecoration: aToolDecoration renderContext: aRenderContext;		yourself! !
!WAHaloVisitor class categoriesFor: #decoration:context:!instance creation!public! !

