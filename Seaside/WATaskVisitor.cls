"Filed out from Dolphin Smalltalk 7"!

WAPainterVisitor subclass: #WATaskVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATaskVisitor guid: (GUID fromString: '{46c46c5f-f95b-4d47-829c-e39dfeade47c}')!
WATaskVisitor comment: ''!
!WATaskVisitor categoriesForClass!Seaside-Component-Visitors! !
!WATaskVisitor methodsFor!

visitTask: aTask	super visitTask: aTask.	aTask isExecuting ifFalse: [		[ aTask execute ]			on: WARenderNotification			do: [ :n | ] ]! !
!WATaskVisitor categoriesFor: #visitTask:!public!visiting! !

