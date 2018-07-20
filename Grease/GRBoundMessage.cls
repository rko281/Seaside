"Filed out from Dolphin Smalltalk 7"!

GRDelayedSendMessage subclass: #GRBoundMessage
	instanceVariableNames: 'arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRBoundMessage guid: (GUID fromString: '{7f8c4205-357a-4739-b789-544115a4a018}')!
GRBoundMessage comment: 'A delayed send that has some or all of the arguments defined in advance. Additionally supplied arguments will be added, if possible, to these when the object is evaluate.Instance Variables	arguments:		<Array>arguments	- the predefined arguments'!
!GRBoundMessage categoriesForClass!Grease-Core-Utilities! !
!GRBoundMessage methodsFor!

argumentCount	^ selector numArgs - arguments size!

initializeWithSelector: aSymbol arguments: anArray	self initializeWithSelector: aSymbol.	arguments := anArray asArray!

mergeArguments: anArray	^ arguments , anArray!

printOn: aStream	super printOn: aStream.	aStream nextPutAll: ' arguments: '; print: arguments! !
!GRBoundMessage categoriesFor: #argumentCount!delegation!public! !
!GRBoundMessage categoriesFor: #initializeWithSelector:arguments:!initialization!public! !
!GRBoundMessage categoriesFor: #mergeArguments:!private! !
!GRBoundMessage categoriesFor: #printOn:!printing!public! !

!GRBoundMessage class methodsFor!

selector: aSymbol	^ self selector: aSymbol arguments: #()!

selector: aSymbol arguments: anArray	^ self basicNew		initializeWithSelector: aSymbol arguments: anArray;		yourself! !
!GRBoundMessage class categoriesFor: #selector:!instance creation!public! !
!GRBoundMessage class categoriesFor: #selector:arguments:!instance creation!public! !

