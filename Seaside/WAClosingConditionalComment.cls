"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAClosingConditionalComment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClosingConditionalComment guid: (GUID fromString: '{2327f7d7-0a4e-488b-a9de-d80279fa7bd1}')!
WAClosingConditionalComment comment: 'Closes a WAConditionalComment.'!
!WAClosingConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !
!WAClosingConditionalComment methodsFor!

encodeOn: aDocument	aDocument nextPutAll: '<!![endif]-->'! !
!WAClosingConditionalComment categoriesFor: #encodeOn:!printing!public! !

