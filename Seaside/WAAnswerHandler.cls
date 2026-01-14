"Filed out from Dolphin Smalltalk"!

WADecoration subclass: #WAAnswerHandler
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAnswerHandler guid: (GUID fromString: '{833036f2-7159-458d-99bb-6b53984b28c6}')!

WAAnswerHandler comment: 'I am the specific decoration to handle the answer of a given block.'!

!WAAnswerHandler categoriesForClass!Seaside-Component-Base! !

!WAAnswerHandler methodsFor!

block: aBlock	block := aBlock!

handleAnswer: anObject continueWith: aBlock	block valueWithPossibleArguments: (Array with:  anObject)! !

!WAAnswerHandler categoriesForMethods!
block:!accessing!public! !
handleAnswer:continueWith:!processing!public! !
!

