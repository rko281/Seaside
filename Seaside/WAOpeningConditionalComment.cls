"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAOpeningConditionalComment
	instanceVariableNames: 'condition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOpeningConditionalComment guid: (GUID fromString: '{cbf077ee-cbda-4cf2-8c2b-ed95d4450300}')!
WAOpeningConditionalComment comment: 'Opens a WAConditionalComment and encodes the condition.'!
!WAOpeningConditionalComment categoriesForClass!Seaside-Core-Document-Elements! !
!WAOpeningConditionalComment methodsFor!

condition	^ condition!

condition: aString	condition := aString!

encodeOn: aDocument	aDocument		nextPutAll: '<!!--[';		nextPutAll: self condition;		nextPutAll: ']>'! !
!WAOpeningConditionalComment categoriesFor: #condition!accessing!public! !
!WAOpeningConditionalComment categoriesFor: #condition:!accessing!public! !
!WAOpeningConditionalComment categoriesFor: #encodeOn:!printing!public! !

!WAOpeningConditionalComment class methodsFor!

condition: aString	^ self new		condition: aString;		yourself! !
!WAOpeningConditionalComment class categoriesFor: #condition:!instance creation!public! !

