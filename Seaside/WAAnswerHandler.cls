"Filed out from Dolphin Smalltalk 7"!

WADecoration subclass: #WAAnswerHandler
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAnswerHandler guid: (GUID fromString: '{ff397b50-db71-4f04-b8a8-86e76e4e4c06}')!
WAAnswerHandler comment: 'I am the specific decoration to handle the answer of a given block.'!
!WAAnswerHandler categoriesForClass!Seaside-Component-Base! !
!WAAnswerHandler methodsFor!

block: aBlock	block := aBlock!

handleAnswer: anObject continueWith: aBlock	block valueWithPossibleArguments: (Array with:  anObject)! !
!WAAnswerHandler categoriesFor: #block:!accessing!public! !
!WAAnswerHandler categoriesFor: #handleAnswer:continueWith:!processing!public! !

