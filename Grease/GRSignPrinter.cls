"Filed out from Dolphin Smalltalk 7"!

GRPrinter subclass: #GRSignPrinter
	instanceVariableNames: 'negativePrinter positivePrinter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRSignPrinter guid: (GUID fromString: '{0898cfed-a09f-49ce-932f-02076b2124fc}')!
GRSignPrinter comment: ''!
!GRSignPrinter categoriesForClass!Grease-Core-Text! !
!GRSignPrinter methodsFor!

initialize	super initialize.	self negativePrinter: $-.	self positivePrinter: nil!

negativePrinter: aPrinter	"The printer to be used when the number is negative."		negativePrinter := aPrinter!

positivePrinter: aPrinter	"The printer to be used when the number is zero or positive."		positivePrinter := aPrinter!

print: anObject on: aStream 	anObject negative		ifTrue: [ negativePrinter print: anObject on: aStream ]		ifFalse: [ positivePrinter print: anObject on: aStream ]! !
!GRSignPrinter categoriesFor: #initialize!initialization!public! !
!GRSignPrinter categoriesFor: #negativePrinter:!accessing!public! !
!GRSignPrinter categoriesFor: #positivePrinter:!accessing!public! !
!GRSignPrinter categoriesFor: #print:on:!printing!public! !

