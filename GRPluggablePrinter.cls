"Filed out from Dolphin Smalltalk 7"!

GRPrinter subclass: #GRPluggablePrinter
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRPluggablePrinter guid: (GUID fromString: '{fb95a356-7f42-4e79-b371-654b20b8d2f4}')!
GRPluggablePrinter comment: ''!
!GRPluggablePrinter categoriesForClass!Grease-Core-Text! !
!GRPluggablePrinter methodsFor!

block: aBlock	block := aBlock!

initialize	super initialize.	self block: [ :value | String new ]!

print: anObject on: aStream	aStream nextPutAll: (block value: anObject)! !
!GRPluggablePrinter categoriesFor: #block:!accessing!public! !
!GRPluggablePrinter categoriesFor: #initialize!initialization!public! !
!GRPluggablePrinter categoriesFor: #print:on:!printing!public! !

!GRPluggablePrinter class methodsFor!

on: aBlock	^ self new block: aBlock! !
!GRPluggablePrinter class categoriesFor: #on:!instance creation!public! !

