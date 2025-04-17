"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMatch guid: (GUID fromString: '{7b0a017f-a971-4b54-968b-0e98a9c25892}')!

WAMatch comment: ''!

!WAMatch categoriesForClass!Route! !

!WAMatch class methodsFor!

argument: aString notFoundInd: aCollectionOfStrings	WAArgumentNotFoundError signal: 'argument "', aString, '" was not found in ', aCollectionOfStrings greaseString!

targetIndexOf: aString arguments: aCollectionOfStrings	aString do: [ :each |		each isDigit ifFalse: [			| index |			index := aCollectionOfStrings indexOf: aString.			index isZero ifTrue: [				self argument: aString notFoundInd: aCollectionOfStrings ].			^ index ] ].	^ aString asNumber! !

!WAMatch class categoriesForMethods!
argument:notFoundInd:!private! !
targetIndexOf:arguments:!private! !
!

