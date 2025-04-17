"Filed out from Dolphin Smalltalk"!

WAJsonBrush subclass: #WAJsonObjectBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonObjectBrush guid: (GUID fromString: '{8992538d-5fe7-4834-8234-64bd27d77573}')!

WAJsonObjectBrush comment: 'A brush to generate a JSON object'!

!WAJsonObjectBrush categoriesForClass!Brushes! !

!WAJsonObjectBrush methodsFor!

closeBrush	self document closeObject!

openBrush	canvas writeIfNotFirst: ', '.	self document openObject! !

!WAJsonObjectBrush categoriesForMethods!
closeBrush!private! !
openBrush!private! !
!

