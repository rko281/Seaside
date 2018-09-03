"Filed out from Dolphin Smalltalk 7"!

GRPrinter subclass: #GRUnitPrinter
	instanceVariableNames: 'integerPrinter fractionPrinter units base'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRUnitPrinter guid: (GUID fromString: '{e72fc1ea-fc74-4124-a216-68dd7f03953c}')!
GRUnitPrinter comment: ''!
!GRUnitPrinter categoriesForClass!Grease-Core-Text! !
!GRUnitPrinter methodsFor!

base: anInteger	base := anInteger!

fractionPrinter: aPrinter	fractionPrinter := aPrinter!

initialize	super initialize.	self integerPrinter: (GRNumberPrinter new		precision: 0;		yourself).	self fractionPrinter: (GRNumberPrinter new		precision: 1;		yourself)!

integerPrinter: aPrinter	integerPrinter := aPrinter!

print: anObject on: aStream	anObject = 1		ifTrue: [ ^ self print: anObject unit: units first on: aStream ].	units allButFirst		inject: anObject asFloat		into: [ :value :each |			value < base				ifFalse: [ value / base ]				ifTrue: [ ^ self print: value unit: each on: aStream ] ]!

print: aNumber unit: aString on: aStream	(units first = aString or: [ units second = aString ])		ifTrue: [ integerPrinter print: aNumber on: aStream ]		ifFalse: [ fractionPrinter print: aNumber on: aStream ].	aStream nextPut: $ ; nextPutAll: aString!

units: anArray	units := anArray! !
!GRUnitPrinter categoriesFor: #base:!accessing!public! !
!GRUnitPrinter categoriesFor: #fractionPrinter:!accessing!public! !
!GRUnitPrinter categoriesFor: #initialize!initialization!public! !
!GRUnitPrinter categoriesFor: #integerPrinter:!accessing!public! !
!GRUnitPrinter categoriesFor: #print:on:!printing!public! !
!GRUnitPrinter categoriesFor: #print:unit:on:!printing!public! !
!GRUnitPrinter categoriesFor: #units:!accessing!public! !

!GRUnitPrinter class methodsFor!

base: anInteger units: anArray	^ self new 		base: anInteger;		units: anArray;		yourself! !
!GRUnitPrinter class categoriesFor: #base:units:!instance creation!public! !

