"Filed out from Dolphin Smalltalk 7"!

WAOpeningConditionalComment subclass: #WAOpeningRevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOpeningRevealedConditionalComment guid: (GUID fromString: '{2ad23a68-d87e-482a-bdba-b575d08ec9c6}')!
WAOpeningRevealedConditionalComment comment: 'Opens a WARevealedConditionalComment and encodes the condition.'!
!WAOpeningRevealedConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !
!WAOpeningRevealedConditionalComment methodsFor!

encodeOn: aDocument	aDocument		nextPutAll: '<!!--[';		nextPutAll: self condition;		nextPutAll: ']><!!-->'! !
!WAOpeningRevealedConditionalComment categoriesFor: #encodeOn:!printing!public! !

