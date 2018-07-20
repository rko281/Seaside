"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAClosingRevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClosingRevealedConditionalComment guid: (GUID fromString: '{56819731-6224-4186-93da-a67c106f96d9}')!
WAClosingRevealedConditionalComment comment: 'Closes a WARevealedConditionalComment.'!
!WAClosingRevealedConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !
!WAClosingRevealedConditionalComment methodsFor!

encodeOn: aDocument	aDocument nextPutAll: '<!!--<!![endif]-->'! !
!WAClosingRevealedConditionalComment categoriesFor: #encodeOn:!printing!public! !

