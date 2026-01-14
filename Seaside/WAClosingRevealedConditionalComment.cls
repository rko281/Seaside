"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAClosingRevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClosingRevealedConditionalComment guid: (GUID fromString: '{961e4b9b-f3f7-4338-aeef-9d7f851fce0a}')!

WAClosingRevealedConditionalComment comment: 'Closes a WARevealedConditionalComment.'!

!WAClosingRevealedConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !

!WAClosingRevealedConditionalComment methodsFor!

encodeOn: aDocument	aDocument nextPutAll: '<!!--<!![endif]-->'! !

!WAClosingRevealedConditionalComment categoriesForMethods!
encodeOn:!printing!public! !
!

