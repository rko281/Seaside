"Filed out from Dolphin Smalltalk"!

WAJsonBrush subclass: #WAJsonObjectBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonObjectBrush guid: (GUID fromString: '{1c3321e6-7b19-4fe2-b5b0-4ce4d83cbd3c}')!

WAJsonObjectBrush comment: 'A brush to generate a JSON object'!

!WAJsonObjectBrush categoriesForClass!Seaside-JSON-Core-Brushes! !

!WAJsonObjectBrush methodsFor!

closeBrush	self document closeObject!

openBrush	canvas writeIfNotFirst: ', '.	self document openObject! !

!WAJsonObjectBrush categoriesForMethods!
closeBrush!private! !
openBrush!private! !
!

