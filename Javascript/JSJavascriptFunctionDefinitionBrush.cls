"Filed out from Dolphin Smalltalk"!

JSJavascriptBrush subclass: #JSJavascriptFunctionDefinitionBrush
	instanceVariableNames: 'arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJavascriptFunctionDefinitionBrush guid: (GUID fromString: '{6fa31384-56a9-47f6-8fd4-5a60a1a7e1d6}')!

JSJavascriptFunctionDefinitionBrush comment: ''!

!JSJavascriptFunctionDefinitionBrush categoriesForClass!Javascript-Core-Brushes! !

!JSJavascriptFunctionDefinitionBrush methodsFor!

arguments: aCollectionOfStrings	arguments := aCollectionOfStrings!

closeBrush	self document closeBlock!

openBrush	self document nextPutAll: 'function('.	arguments isNil ifFalse: [		arguments do: [ :each | self document identifier: each ]		separatedBy: [ self document nextPut: $, ].].	self document nextPut: $).	self document openBlock! !

!JSJavascriptFunctionDefinitionBrush categoriesForMethods!
arguments:!public! !
closeBrush!private! !
openBrush!private! !
!

