"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSCall
	instanceVariableNames: 'name arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSCall guid: (GUID fromString: '{ce611c04-a0b6-4974-a7c3-77ed8ff37cca}')!
JSCall comment: 'I represent a function call or method invocation to the decorated object.'!
!JSCall categoriesForClass!Javascript-Core-Decorations! !
!JSCall methodsFor!

arguments	^ arguments!

arguments: anArray 	arguments := anArray!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	(self name isNil or: [ self name isEmpty ]) ifFalse:			[ aStream				nextPut: $.;				nextPutAll: self name ].	JSStream encodeArguments: self arguments on: aStream!

name	^ name!

name: aString 	name := aString! !
!JSCall categoriesFor: #arguments!accessing!public! !
!JSCall categoriesFor: #arguments:!accessing!public! !
!JSCall categoriesFor: #javascriptContentOn:!printing!public! !
!JSCall categoriesFor: #name!accessing!public! !
!JSCall categoriesFor: #name:!accessing!public! !

