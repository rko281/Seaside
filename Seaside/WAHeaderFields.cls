"Filed out from Dolphin Smalltalk 7"!

GROrderedMultiMap subclass: #WAHeaderFields
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHeaderFields guid: (GUID fromString: '{4603ff33-fd36-4b91-b823-cbe93f062f53}')!
WAHeaderFields comment: 'I am the headers dictionary of an HTTP request or response.'!
!WAHeaderFields categoriesForClass!Seaside-Core-HTTP! !
!WAHeaderFields methodsFor!

checkValue: aValue	(aValue isString and: [		(aValue indexOf: Character cr) ~= 0			or: [ (aValue indexOf: Character lf) ~= 0 ] ]) ifTrue: [				WAInvalidHeaderValueError signal: 'invalid header value', aValue "we know this is a String now" ]!

errorKeyNotFound	^ nil!

privateAt: aKey put: aValue	self checkValue: aValue.	^ super privateAt: aKey put: aValue! !
!WAHeaderFields categoriesFor: #checkValue:!private! !
!WAHeaderFields categoriesFor: #errorKeyNotFound!private! !
!WAHeaderFields categoriesFor: #privateAt:put:!private! !

