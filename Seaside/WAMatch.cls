"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMatch guid: (GUID fromString: '{8c9d8286-1cfd-41a8-8236-4423ff438d69}')!
WAMatch comment: ''!
!WAMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAMatch class methodsFor!

argument: aString notFoundInd: aCollectionOfStrings	WAArgumentNotFoundError signal: 'argument "', aString, '" was not found in ', aCollectionOfStrings greaseString!

targetIndexOf: aString arguments: aCollectionOfStrings	aString do: [ :each |		each isDigit ifFalse: [			| index |			index := aCollectionOfStrings indexOf: aString.			index isZero ifTrue: [				self argument: aString notFoundInd: aCollectionOfStrings ].			^ index ] ].	^ aString asNumber! !
!WAMatch class categoriesFor: #argument:notFoundInd:!private! !
!WAMatch class categoriesFor: #targetIndexOf:arguments:!private! !

