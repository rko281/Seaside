"Filed out from Dolphin Smalltalk 7"!

JSStatement subclass: #JSConcatenation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSConcatenation guid: (GUID fromString: '{a12e19ca-a758-4735-a780-7b7d086735ba}')!
JSConcatenation comment: 'I represent a sequence (or concatenation) of a decorated object and another object.'!
!JSConcatenation categoriesForClass!Javascript-Core-Decorations! !
!JSConcatenation methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPut: $;;		javascript: self statement! !
!JSConcatenation categoriesFor: #javascriptContentOn:!printing!public! !

