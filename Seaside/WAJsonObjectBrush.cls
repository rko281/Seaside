"Filed out from Dolphin Smalltalk 7"!

WAJsonBrush subclass: #WAJsonObjectBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAJsonObjectBrush guid: (GUID fromString: '{6b254ea8-ef70-4ada-a667-1106f9646c5d}')!
WAJsonObjectBrush comment: ''!
!WAJsonObjectBrush categoriesForClass!Seaside-JSON-Core! !
!WAJsonObjectBrush methodsFor!

closeBrush	self document closeObject!

openBrush	canvas writeIfNotFirst: ', '.	self document openObject! !
!WAJsonObjectBrush categoriesFor: #closeBrush!private! !
!WAJsonObjectBrush categoriesFor: #openBrush!private! !

