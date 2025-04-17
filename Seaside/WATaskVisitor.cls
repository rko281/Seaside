"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WATaskVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATaskVisitor guid: (GUID fromString: '{95f212b5-2d81-48f4-a54e-3bcdaabe3336}')!

WATaskVisitor comment: ''!

!WATaskVisitor categoriesForClass!Visitors! !

!WATaskVisitor methodsFor!

visitTask: aTask	super visitTask: aTask.	aTask isExecuting ifFalse: [		[ aTask execute ]			on: WARenderNotification			do: [ :n | ] ]! !

!WATaskVisitor categoriesForMethods!
visitTask:!public!visiting! !
!

