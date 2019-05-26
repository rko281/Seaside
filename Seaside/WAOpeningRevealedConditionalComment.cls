"Filed out from Dolphin Smalltalk 7"!

WAOpeningConditionalComment subclass: #WAOpeningRevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOpeningRevealedConditionalComment guid: (GUID fromString: '{1647e91f-dd03-40e0-8a7b-bac8407f1a18}')!
WAOpeningRevealedConditionalComment comment: 'Opens a WARevealedConditionalComment and encodes the condition.'!
!WAOpeningRevealedConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !
!WAOpeningRevealedConditionalComment methodsFor!

encodeOn: aDocument	aDocument		nextPutAll: '<!!--[';		nextPutAll: self condition;		nextPutAll: ']><!!-->'! !
!WAOpeningRevealedConditionalComment categoriesFor: #encodeOn:!printing!public! !

