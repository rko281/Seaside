"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSCall
	instanceVariableNames: 'name arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSCall guid: (GUID fromString: '{4d3c477e-3f23-4cd8-b2a3-c68cfbfe4e2a}')!

JSCall comment: 'I represent a function call or method invocation to the decorated object.'!

!JSCall categoriesForClass!Decorations! !

!JSCall methodsFor!

arguments	^ arguments!

arguments: anArray 	arguments := anArray!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	(self name isNil or: [ self name isEmpty ]) ifFalse:			[ aStream				nextPut: $.;				nextPutAll: self name ].	JSStream encodeArguments: self arguments on: aStream!

name	^ name!

name: aString 	name := aString! !

!JSCall categoriesForMethods!
arguments!accessing!public! !
arguments:!accessing!public! !
javascriptContentOn:!printing!public! !
name!accessing!public! !
name:!accessing!public! !
!

