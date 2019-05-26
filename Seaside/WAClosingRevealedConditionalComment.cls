"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAClosingRevealedConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClosingRevealedConditionalComment guid: (GUID fromString: '{2f2fa003-a0bb-462f-8db0-25611d9301b9}')!
WAClosingRevealedConditionalComment comment: 'Closes a WARevealedConditionalComment.'!
!WAClosingRevealedConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !
!WAClosingRevealedConditionalComment methodsFor!

encodeOn: aDocument	aDocument nextPutAll: '<!!--<!![endif]-->'! !
!WAClosingRevealedConditionalComment categoriesFor: #encodeOn:!printing!public! !

