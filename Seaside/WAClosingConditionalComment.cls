"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAClosingConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClosingConditionalComment guid: (GUID fromString: '{efc28a34-2c09-46d2-8b05-c15c0b0c9a85}')!

WAClosingConditionalComment comment: 'Closes a WAConditionalComment.'!

!WAClosingConditionalComment categoriesForClass!Document-Elements! !

!WAClosingConditionalComment methodsFor!

encodeOn: aDocument	aDocument nextPutAll: '<!![endif]-->'! !

!WAClosingConditionalComment categoriesForMethods!
encodeOn:!printing!public! !
!

