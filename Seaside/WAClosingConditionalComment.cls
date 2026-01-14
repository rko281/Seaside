"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAClosingConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClosingConditionalComment guid: (GUID fromString: '{1a709a0d-f552-45b0-abfc-15381646c148}')!

WAClosingConditionalComment comment: 'Closes a WAConditionalComment.'!

!WAClosingConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !

!WAClosingConditionalComment methodsFor!

encodeOn: aDocument	aDocument nextPutAll: '<!![endif]-->'! !

!WAClosingConditionalComment categoriesForMethods!
encodeOn:!printing!public! !
!

