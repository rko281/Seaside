"Filed out from Dolphin Smalltalk"!

Continuation subclass: #WAContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAContinuation guid: (GUID fromString: '{b797c79e-2631-4df4-8ce4-7d883f5ac8d0}')!

WAContinuation comment: 'A WAContinuation is the Squeak implementation of a continuation. It serializes the whole stack into an arrayInstance Variables	values:		<Array<ContextPart>>values	- an Array of ContextPart and the values they store'!

!WAContinuation categoriesForClass!Seaside-Pharo40-Continuation! !

!WAContinuation methodsFor!

valueWithPossibleArguments: anArray 
	^self value: anArray first.! !

!WAContinuation categoriesForMethods!
valueWithPossibleArguments:!pharo!public! !
!

!WAContinuation class methodsFor!

currentDo: aBlock
	^ aBlock value: (self fromContext: Processor activeProcess topFrame sender)! !

!WAContinuation class categoriesForMethods!
currentDo:!instance creation!public! !
!

