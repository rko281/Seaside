"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSApply
	instanceVariableNames: 'arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSApply guid: (GUID fromString: '{7a685ac1-a699-4e60-9449-4c59bfe27aed}')!
JSApply comment: 'I apply a JavaScript function and provide arguments.'!
!JSApply categoriesForClass!Javascript-Core-Decorations! !
!JSApply methodsFor!

arguments	^ arguments!

arguments: aCollection	arguments := aCollection!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	JSStream encodeArguments: self arguments on: aStream! !
!JSApply categoriesFor: #arguments!accessing!public! !
!JSApply categoriesFor: #arguments:!accessing!public! !
!JSApply categoriesFor: #javascriptContentOn:!printing!public! !

