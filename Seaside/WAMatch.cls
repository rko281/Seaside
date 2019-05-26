"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMatch guid: (GUID fromString: '{ae1375e3-28d6-4f0e-8f5d-c48bfb37f19d}')!
WAMatch comment: ''!
!WAMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAMatch class methodsFor!

argument: aString notFoundInd: aCollectionOfStrings	WAArgumentNotFoundError signal: 'argument "', aString, '" was not found in ', aCollectionOfStrings greaseString!

targetIndexOf: aString arguments: aCollectionOfStrings	aString do: [ :each |		each isDigit ifFalse: [			| index |			index := aCollectionOfStrings indexOf: aString.			index isZero ifTrue: [				self argument: aString notFoundInd: aCollectionOfStrings ].			^ index ] ].	^ aString asNumber! !
!WAMatch class categoriesFor: #argument:notFoundInd:!private! !
!WAMatch class categoriesFor: #targetIndexOf:arguments:!private! !

