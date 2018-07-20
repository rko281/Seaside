"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTaskTest subclass: #WAFlowConvenienceFunctionalTest
	instanceVariableNames: 'cheese'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFlowConvenienceFunctionalTest guid: (GUID fromString: '{61c379a2-3127-4abc-ae06-1edb211524fd}')!
WAFlowConvenienceFunctionalTest comment: ''!
!WAFlowConvenienceFunctionalTest categoriesForClass!Seaside-Tests-Flow-Functional! !
!WAFlowConvenienceFunctionalTest methodsFor!

chooseCheese	cheese := self		chooseFrom: #('Greyerzer' 'Tilsiter' 'Sbrinz')		caption: 'What''s your favorite Cheese?'.	cheese isNil ifTrue: [ self chooseCheese ]!

confirmCheese	^ self confirm: 'Is ' , cheese , ' your favorite cheese?'!

go	[ self chooseCheese.	  self confirmCheese ] whileFalse.	self informCheese!

informCheese	self inform: 'Your favorite cheese is ', cheese, '.'!

states	^ Array with: self! !
!WAFlowConvenienceFunctionalTest categoriesFor: #chooseCheese!controlling!public! !
!WAFlowConvenienceFunctionalTest categoriesFor: #confirmCheese!controlling!public! !
!WAFlowConvenienceFunctionalTest categoriesFor: #go!public!running! !
!WAFlowConvenienceFunctionalTest categoriesFor: #informCheese!controlling!public! !
!WAFlowConvenienceFunctionalTest categoriesFor: #states!hooks!public! !

