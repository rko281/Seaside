"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAOpeningConditionalComment
	instanceVariableNames: 'condition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOpeningConditionalComment guid: (GUID fromString: '{26f66cb5-e5f8-49d4-be30-238f0c8fee64}')!

WAOpeningConditionalComment comment: 'Opens a WAConditionalComment and encodes the condition.'!

!WAOpeningConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !

!WAOpeningConditionalComment methodsFor!

condition	^ condition!

condition: aString	condition := aString!

encodeOn: aDocument	aDocument		nextPutAll: '<!!--[';		nextPutAll: self condition;		nextPutAll: ']>'! !

!WAOpeningConditionalComment categoriesForMethods!
condition!accessing!public! !
condition:!accessing!public! !
encodeOn:!printing!public! !
!

!WAOpeningConditionalComment class methodsFor!

condition: aString	^ self new		condition: aString;		yourself! !

!WAOpeningConditionalComment class categoriesForMethods!
condition:!instance creation!public! !
!

