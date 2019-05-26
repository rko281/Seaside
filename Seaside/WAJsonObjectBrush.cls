"Filed out from Dolphin Smalltalk 7"!

WAJsonBrush subclass: #WAJsonObjectBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAJsonObjectBrush guid: (GUID fromString: '{fb36eb2a-0fda-43de-bc88-c0403a70f213}')!
WAJsonObjectBrush comment: ''!
!WAJsonObjectBrush categoriesForClass!Seaside-JSON-Core! !
!WAJsonObjectBrush methodsFor!

closeBrush	self document closeObject!

openBrush	canvas writeIfNotFirst: ', '.	self document openObject! !
!WAJsonObjectBrush categoriesFor: #closeBrush!private! !
!WAJsonObjectBrush categoriesFor: #openBrush!private! !

