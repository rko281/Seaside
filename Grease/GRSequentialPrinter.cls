"Filed out from Dolphin Smalltalk 7"!

GRPrinter subclass: #GRSequentialPrinter
	instanceVariableNames: 'parts'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRSequentialPrinter guid: (GUID fromString: '{f3b5f346-ccf3-4383-8573-676bb5a48070}')!
GRSequentialPrinter comment: ''!
!GRSequentialPrinter categoriesForClass!Grease-Core-Text! !
!GRSequentialPrinter methodsFor!

, aConverter	parts add: aConverter!

initialize	super initialize.	parts := OrderedCollection new!

print: anObject on: aStream 	parts do: [ :each | each print: anObject on: aStream ]! !
!GRSequentialPrinter categoriesFor: #,!operators!public! !
!GRSequentialPrinter categoriesFor: #initialize!initialization!public! !
!GRSequentialPrinter categoriesFor: #print:on:!printing!public! !

