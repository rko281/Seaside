"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAClosingConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClosingConditionalComment guid: (GUID fromString: '{9b2ba699-6fe1-4d68-a5d8-717847a89aa8}')!
WAClosingConditionalComment comment: 'Closes a WAConditionalComment.'!
!WAClosingConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !
!WAClosingConditionalComment methodsFor!

encodeOn: aDocument	aDocument nextPutAll: '<!![endif]-->'! !
!WAClosingConditionalComment categoriesFor: #encodeOn:!printing!public! !

