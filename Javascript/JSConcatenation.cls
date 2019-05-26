"Filed out from Dolphin Smalltalk 7"!

JSStatement subclass: #JSConcatenation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSConcatenation guid: (GUID fromString: '{c4b5bfb9-ba53-46b3-9d1a-dd611e27da59}')!
JSConcatenation comment: 'I represent a sequence (or concatenation) of a decorated object and another object.'!
!JSConcatenation categoriesForClass!Javascript-Core-Decorations! !
!JSConcatenation methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPut: $;;		javascript: self statement! !
!JSConcatenation categoriesFor: #javascriptContentOn:!printing!public! !

