"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WATaskVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATaskVisitor guid: (GUID fromString: '{c37d77ff-b192-4024-8358-5fea1e86e963}')!

WATaskVisitor comment: ''!

!WATaskVisitor categoriesForClass!Seaside-Component-Visitors! !

!WATaskVisitor methodsFor!

visitTask: aTask	super visitTask: aTask.	aTask isExecuting ifFalse: [		[ aTask execute ]			on: WARenderNotification			do: [ :n | ] ]! !

!WATaskVisitor categoriesForMethods!
visitTask:!public!visiting! !
!

