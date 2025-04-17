"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAClosingRevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClosingRevealedConditionalComment guid: (GUID fromString: '{62580055-713d-4a5e-994d-3255d3354dd3}')!

WAClosingRevealedConditionalComment comment: 'Closes a WARevealedConditionalComment.'!

!WAClosingRevealedConditionalComment categoriesForClass!Document-Elements! !

!WAClosingRevealedConditionalComment methodsFor!

encodeOn: aDocument	aDocument nextPutAll: '<!!--<!![endif]-->'! !

!WAClosingRevealedConditionalComment categoriesForMethods!
encodeOn:!printing!public! !
!

