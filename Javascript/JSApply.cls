"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSApply
	instanceVariableNames: 'arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSApply guid: (GUID fromString: '{1eb64382-098b-41e6-a4e3-930c5d97c696}')!

JSApply comment: 'I apply a JavaScript function and provide arguments.'!

!JSApply categoriesForClass!Decorations! !

!JSApply methodsFor!

arguments	^ arguments!

arguments: aCollection	arguments := aCollection!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	JSStream encodeArguments: self arguments on: aStream! !

!JSApply categoriesForMethods!
arguments!accessing!public! !
arguments:!accessing!public! !
javascriptContentOn:!printing!public! !
!

