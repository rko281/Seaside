"Filed out from Dolphin Smalltalk"!

JSJavascriptBrush subclass: #JSJavascriptElementBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJavascriptElementBrush guid: (GUID fromString: '{bde098b7-f44e-4551-b468-3a869a3b5b99}')!

JSJavascriptElementBrush comment: 'Abstract superclass for JSON elements'!

!JSJavascriptElementBrush categoriesForClass!Javascript-Core-Brushes! !

!JSJavascriptElementBrush methodsFor!

closeBrush!

openBrush	canvas writeCharacterIfNotFirst: $,! !

!JSJavascriptElementBrush categoriesForMethods!
closeBrush!private! !
openBrush!private! !
!

!JSJavascriptElementBrush class methodsFor!

isAbstract 	^ self == JSJavascriptElementBrush! !

!JSJavascriptElementBrush class categoriesForMethods!
isAbstract!public!testing! !
!

