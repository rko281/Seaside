"Filed out from Dolphin Smalltalk"!

WAFunctionalTaskTest subclass: #WAFlowConvenienceFunctionalTest
	instanceVariableNames: 'cheese'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFlowConvenienceFunctionalTest guid: (GUID fromString: '{6c2fc50d-7402-46fe-891c-c1e5f1bca74f}')!

WAFlowConvenienceFunctionalTest comment: ''!

!WAFlowConvenienceFunctionalTest categoriesForClass!Functional! !

!WAFlowConvenienceFunctionalTest methodsFor!

chooseCheese	cheese := self		chooseFrom: #('Greyerzer' 'Tilsiter' 'Sbrinz')		caption: 'What''s your favorite Cheese?'.	cheese isNil ifTrue: [ self chooseCheese ]!

confirmCheese	^ self confirm: 'Is ' , cheese , ' your favorite cheese?'!

go	[ self chooseCheese.	  self confirmCheese ] whileFalse.	self informCheese!

informCheese	self inform: 'Your favorite cheese is ', cheese, '.'!

states	^ Array with: self! !

!WAFlowConvenienceFunctionalTest categoriesForMethods!
chooseCheese!controlling!public! !
confirmCheese!controlling!public! !
go!public!running! !
informCheese!controlling!public! !
states!hooks!public! !
!

