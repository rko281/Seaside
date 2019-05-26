"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTaskTest subclass: #WAFlowConvenienceFunctionalTest
	instanceVariableNames: 'cheese'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFlowConvenienceFunctionalTest guid: (GUID fromString: '{8fb056db-e367-45d2-87eb-f01e4d9aaca6}')!
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

