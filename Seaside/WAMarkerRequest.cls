"Filed out from Dolphin Smalltalk"!

GRNotification subclass: #WAMarkerRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMarkerRequest guid: (GUID fromString: '{890ce2c5-6316-4cb2-8624-14d49f645e8b}')!

WAMarkerRequest comment: ''!

!WAMarkerRequest categoriesForClass!Unclassified! !

!WAMarkerRequest methodsFor!

defaultAction
	^nil.!

tryBlockFrame
	| proc markAndTryFrame |
	proc := Processor activeProcess.
	markAndTryFrame := proc 
				frameAtAddress: (_activeHandler instVarNamed: 'returnContinuation') home outer.
	2 to: 10
		do: 
			[:i | 
			(((proc at: markAndTryFrame sp + i) isKindOf: CompiledCode) 
				and: [(Array with: Context with: BlockClosure) includes: (proc at: markAndTryFrame sp + i + 1) class]) 
					ifTrue: [^proc frameAtIndex: markAndTryFrame sp + i]]! !

!WAMarkerRequest categoriesForMethods!
defaultAction!public! !
tryBlockFrame!public! !
!

