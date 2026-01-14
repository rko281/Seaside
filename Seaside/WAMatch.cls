"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMatch guid: (GUID fromString: '{8fc26361-aab6-412e-87c0-86a8f2b65bf9}')!

WAMatch comment: ''!

!WAMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAMatch class methodsFor!

argument: aString notFoundInd: aCollectionOfStrings	WAArgumentNotFoundError signal: 'argument "', aString, '" was not found in ', aCollectionOfStrings greaseString!

targetIndexOf: aString arguments: aCollectionOfStrings	aString do: [ :each |		each isDigit ifFalse: [			| index |			index := aCollectionOfStrings indexOf: aString.			index isZero ifTrue: [				self argument: aString notFoundInd: aCollectionOfStrings ].			^ index ] ].	^ aString asNumber! !

!WAMatch class categoriesForMethods!
argument:notFoundInd:!private! !
targetIndexOf:arguments:!private! !
!

