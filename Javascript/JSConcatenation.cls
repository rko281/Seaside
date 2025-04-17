"Filed out from Dolphin Smalltalk"!

JSStatement subclass: #JSConcatenation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSConcatenation guid: (GUID fromString: '{3b88336c-4f3b-41d2-ab20-b3bc726b00a8}')!

JSConcatenation comment: 'I represent a sequence (or concatenation) of a decorated object and another object.'!

!JSConcatenation categoriesForClass!Decorations! !

!JSConcatenation methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPut: $;;		javascript: self statement! !

!JSConcatenation categoriesForMethods!
javascriptContentOn:!printing!public! !
!

