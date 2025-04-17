"Filed out from Dolphin Smalltalk"!

WAOpeningConditionalComment subclass: #WAOpeningRevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOpeningRevealedConditionalComment guid: (GUID fromString: '{780a5641-8ac3-4015-8ba8-de5ff7ed0cec}')!

WAOpeningRevealedConditionalComment comment: 'Opens a WARevealedConditionalComment and encodes the condition.'!

!WAOpeningRevealedConditionalComment categoriesForClass!Document-Elements! !

!WAOpeningRevealedConditionalComment methodsFor!

encodeOn: aDocument	aDocument		nextPutAll: '<!!--[';		nextPutAll: self condition;		nextPutAll: ']><!!-->'! !

!WAOpeningRevealedConditionalComment categoriesForMethods!
encodeOn:!printing!public! !
!

