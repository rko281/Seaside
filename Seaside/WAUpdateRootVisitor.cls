"Filed out from Dolphin Smalltalk 7"!

WAPainterVisitor subclass: #WAUpdateRootVisitor
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUpdateRootVisitor guid: (GUID fromString: '{de4933f9-a6c2-4b48-977c-3b492dfc8647}')!
WAUpdateRootVisitor comment: 'A visitor which asks Painters to update a WARoot subclass using #updateRoot:.This is used to update the root of the Document stored on a WARenderContext.'!
!WAUpdateRootVisitor categoriesForClass!Seaside-Core-Rendering! !
!WAUpdateRootVisitor methodsFor!

initializeWithRoot: aRoot	self initialize.	root := aRoot!

root	^ root!

visitPainter: aPainter	aPainter updateRoot: self root! !
!WAUpdateRootVisitor categoriesFor: #initializeWithRoot:!initialization!public! !
!WAUpdateRootVisitor categoriesFor: #root!accessing!public! !
!WAUpdateRootVisitor categoriesFor: #visitPainter:!public!visiting! !

!WAUpdateRootVisitor class methodsFor!

new	^ self root: WARoot new!

root: aRoot	^ self basicNew initializeWithRoot: aRoot; yourself! !
!WAUpdateRootVisitor class categoriesFor: #new!instance creation!public! !
!WAUpdateRootVisitor class categoriesFor: #root:!instance creation!public! !

