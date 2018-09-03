"Filed out from Dolphin Smalltalk 7"!

GRPrinter subclass: #GROrdinalizePrinter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GROrdinalizePrinter guid: (GUID fromString: '{277ab5d1-d10c-42e7-9ee9-424668b36a7d}')!
GROrdinalizePrinter comment: ''!
!GROrdinalizePrinter categoriesForClass!Grease-Core-Text! !
!GROrdinalizePrinter methodsFor!

ordinalize: anInteger	^ (anInteger \\ 100 between: 11 and: 13)		ifTrue: [ 'th' ]		ifFalse: [ 			#('st' 'nd' 'rd')				at: anInteger \\ 10 				ifAbsent: [ 'th' ] ]!

print: anObject on: aStream	aStream nextPutAll: (self ordinalize: anObject integerPart)! !
!GROrdinalizePrinter categoriesFor: #ordinalize:!private! !
!GROrdinalizePrinter categoriesFor: #print:on:!printing!public! !

