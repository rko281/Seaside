"Filed out from Dolphin Smalltalk"!

GROrderedMultiMap subclass: #WAHeaderFields
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHeaderFields guid: (GUID fromString: '{e4e9ce3b-2d95-4bcd-b30e-2ab0ab42d4d4}')!

WAHeaderFields comment: 'I am the headers dictionary of an HTTP request or response.'!

!WAHeaderFields categoriesForClass!Seaside-Core-HTTP! !

!WAHeaderFields methodsFor!

checkValue: aValue	(aValue isString and: [		(aValue indexOf: Character cr) ~= 0			or: [ (aValue indexOf: Character lf) ~= 0 ] ]) ifTrue: [				WAInvalidHeaderValueError signal: 'invalid header value', aValue "we know this is a String now" ]!

errorKeyNotFound	^ nil!

privateAt: aKey put: aValue	self checkValue: aValue.	^ super privateAt: aKey put: aValue! !

!WAHeaderFields categoriesForMethods!
checkValue:!private! !
errorKeyNotFound!private! !
privateAt:put:!private! !
!

