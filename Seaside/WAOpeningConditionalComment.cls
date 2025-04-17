"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAOpeningConditionalComment
	instanceVariableNames: 'condition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOpeningConditionalComment guid: (GUID fromString: '{a1c9d17f-ad28-4a32-813d-2bd47fe1301b}')!

WAOpeningConditionalComment comment: 'Opens a WAConditionalComment and encodes the condition.'!

!WAOpeningConditionalComment categoriesForClass!Document-Elements! !

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

