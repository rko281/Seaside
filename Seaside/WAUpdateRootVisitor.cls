"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAUpdateRootVisitor
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUpdateRootVisitor guid: (GUID fromString: '{f3b27abd-046b-4732-9161-d03c977dcf9e}')!

WAUpdateRootVisitor comment: 'A visitor which asks Painters to update a WARoot subclass using #updateRoot:.This is used to update the root of the Document stored on a WARenderContext.'!

!WAUpdateRootVisitor categoriesForClass!Seaside-Core-Rendering! !

!WAUpdateRootVisitor methodsFor!

initializeWithRoot: aRoot	self initialize.	root := aRoot!

root	^ root!

visitPainter: aPainter	aPainter updateRoot: self root! !

!WAUpdateRootVisitor categoriesForMethods!
initializeWithRoot:!initialization!public! !
root!accessing!public! !
visitPainter:!public!visiting! !
!

!WAUpdateRootVisitor class methodsFor!

new	^ self root: WARoot new!

root: aRoot	^ self basicNew initializeWithRoot: aRoot; yourself! !

!WAUpdateRootVisitor class categoriesForMethods!
new!instance creation!public! !
root:!instance creation!public! !
!

