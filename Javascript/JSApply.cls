"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSApply
	instanceVariableNames: 'arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSApply guid: (GUID fromString: '{77774380-f666-4b2e-87ca-9a5350ff5e9e}')!
JSApply comment: 'I apply a JavaScript function and provide arguments.'!
!JSApply categoriesForClass!Javascript-Core-Decorations! !
!JSApply methodsFor!

arguments	^ arguments!

arguments: aCollection	arguments := aCollection!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	JSStream encodeArguments: self arguments on: aStream! !
!JSApply categoriesFor: #arguments!accessing!public! !
!JSApply categoriesFor: #arguments:!accessing!public! !
!JSApply categoriesFor: #javascriptContentOn:!printing!public! !

