"Filed out from Dolphin Smalltalk 7"!

WAPainterVisitor subclass: #WATaskVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATaskVisitor guid: (GUID fromString: '{03a60567-8475-4a18-8876-9057c844fb7f}')!
WATaskVisitor comment: ''!
!WATaskVisitor categoriesForClass!Seaside-Component-Visitors! !
!WATaskVisitor methodsFor!

visitTask: aTask	super visitTask: aTask.	aTask isExecuting ifFalse: [		[ aTask execute ]			on: WARenderNotification			do: [ :n | ] ]! !
!WATaskVisitor categoriesFor: #visitTask:!public!visiting! !

