"Filed out from Dolphin Smalltalk"!

GROrderedMultiMap subclass: #WAHeaderFields
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHeaderFields guid: (GUID fromString: '{60000d8d-e41e-46ec-9a38-8369345fc2d9}')!

WAHeaderFields comment: 'I am the headers dictionary of an HTTP request or response.'!

!WAHeaderFields categoriesForClass!HTTP! !

!WAHeaderFields methodsFor!

checkValue: aValue	(aValue isString and: [		(aValue indexOf: Character cr) ~= 0			or: [ (aValue indexOf: Character lf) ~= 0 ] ]) ifTrue: [				WAInvalidHeaderValueError signal: 'invalid header value', aValue "we know this is a String now" ]!

errorKeyNotFound	^ nil!

privateAt: aKey put: aValue	self checkValue: aValue.	^ super privateAt: aKey put: aValue! !

!WAHeaderFields categoriesForMethods!
checkValue:!private! !
errorKeyNotFound!private! !
privateAt:put:!private! !
!

