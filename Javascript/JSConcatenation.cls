"Filed out from Dolphin Smalltalk"!

JSStatement subclass: #JSConcatenation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSConcatenation guid: (GUID fromString: '{06e75350-3fa1-4df4-8b27-f046f41a6e33}')!

JSConcatenation comment: 'I represent a sequence (or concatenation) of a decorated object and another object.'!

!JSConcatenation categoriesForClass!Javascript-Core-Decorations! !

!JSConcatenation methodsFor!

javascriptContentOn: aRenderer	super javascriptContentOn: aRenderer.	aRenderer document separator.	aRenderer render: self statement! !

!JSConcatenation categoriesForMethods!
javascriptContentOn:!printing!public! !
!

