"Filed out from Dolphin Smalltalk 7"!

GRDelayedSendMessage subclass: #GRUnboundMessage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRUnboundMessage guid: (GUID fromString: '{b06135b7-6752-4fc7-a447-fc7b601e2d5b}')!
GRUnboundMessage comment: 'A delayed send that has none of the arguments defined in advance.'!
!GRUnboundMessage categoriesForClass!Grease-Core-Utilities! !
!GRUnboundMessage methodsFor!

argumentCount	^ selector numArgs!

mergeArguments: anArray	^ anArray! !
!GRUnboundMessage categoriesFor: #argumentCount!delegation!public! !
!GRUnboundMessage categoriesFor: #mergeArguments:!private! !

