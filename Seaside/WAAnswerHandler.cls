"Filed out from Dolphin Smalltalk"!

WADecoration subclass: #WAAnswerHandler
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAnswerHandler guid: (GUID fromString: '{b79f1b65-5908-4d2b-bc8e-c96e1ae4d66e}')!

WAAnswerHandler comment: 'I am the specific decoration to handle the answer of a given block.'!

!WAAnswerHandler categoriesForClass!Base! !

!WAAnswerHandler methodsFor!

block: aBlock	block := aBlock!

handleAnswer: anObject continueWith: aBlock	block valueWithPossibleArguments: (Array with:  anObject)! !

!WAAnswerHandler categoriesForMethods!
block:!accessing!public! !
handleAnswer:continueWith:!processing!public! !
!

