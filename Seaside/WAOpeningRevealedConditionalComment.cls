"Filed out from Dolphin Smalltalk"!

WAOpeningConditionalComment subclass: #WAOpeningRevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOpeningRevealedConditionalComment guid: (GUID fromString: '{b528d764-151a-499d-a194-129041cd70ec}')!

WAOpeningRevealedConditionalComment comment: 'Opens a WARevealedConditionalComment and encodes the condition.'!

!WAOpeningRevealedConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !

!WAOpeningRevealedConditionalComment methodsFor!

encodeOn: aDocument	aDocument		nextPutAll: '<!!--[';		nextPutAll: self condition;		nextPutAll: ']><!!-->'! !

!WAOpeningRevealedConditionalComment categoriesForMethods!
encodeOn:!printing!public! !
!

