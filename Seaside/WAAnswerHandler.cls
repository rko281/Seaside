"Filed out from Dolphin Smalltalk 7"!

WADecoration subclass: #WAAnswerHandler
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAnswerHandler guid: (GUID fromString: '{d14d0d66-a30f-4e3f-95a0-8df92130ed1f}')!
WAAnswerHandler comment: ''!
!WAAnswerHandler categoriesForClass!Seaside-Component! !
!WAAnswerHandler methodsFor!

block: aBlock	block := aBlock!

handleAnswer: anObject continueWith: aBlock	block valueWithPossibleArguments: (Array with:  anObject)! !
!WAAnswerHandler categoriesFor: #block:!accessing!public! !
!WAAnswerHandler categoriesFor: #handleAnswer:continueWith:!processing!public! !

