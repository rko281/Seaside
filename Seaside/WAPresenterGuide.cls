"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAPresenterGuide
	instanceVariableNames: 'client'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPresenterGuide guid: (GUID fromString: '{0c462fbd-c24c-4a00-b295-85a810529261}')!

WAPresenterGuide comment: 'WAPresenterGuides takes another WAPainterVisitor as a client. When asked to visit a Component, they will first visit its Decorations. Along the way, they will ask their client to visit each Painter they come across.This allows us to separate the behaviour of the various Presenter-tree traversal methods from the behaviour to perform on each Presenter we visit.'!

!WAPresenterGuide categoriesForClass!Visitors! !

!WAPresenterGuide methodsFor!

client	^ client!

initializeWithClient: aPainterVisitor	self initialize.	client := aPainterVisitor!

postCopyForRenderContext: aRenderContext	super postCopyForRenderContext: aRenderContext.	client := client copyForRenderContext: aRenderContext!

visit: aPainter	aPainter acceptDecorated: self!

visitPainter: aPainter	self client visit: aPainter! !

!WAPresenterGuide categoriesForMethods!
client!accessing!public! !
initializeWithClient:!initialization!public! !
postCopyForRenderContext:!copying!public! !
visit:!public!visiting! !
visitPainter:!public!visiting! !
!

!WAPresenterGuide class methodsFor!

client: aPainterVisitor	^ self basicNew initializeWithClient: aPainterVisitor; yourself!

isAbstract 	^ self == WAPresenterGuide!

new	^ self client: WAPainterVisitor new! !

!WAPresenterGuide class categoriesForMethods!
client:!instance creation!public! !
isAbstract!public!testing! !
new!instance creation!public! !
!

