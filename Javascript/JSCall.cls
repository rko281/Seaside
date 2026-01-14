"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSCall
	instanceVariableNames: 'name arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSCall guid: (GUID fromString: '{941afed5-0aa6-4925-9dd0-9c217fa005ed}')!

JSCall comment: 'I represent a function call or method invocation to the decorated object.'!

!JSCall categoriesForClass!Javascript-Core-Decorations! !

!JSCall methodsFor!

arguments	^ arguments!

arguments: anArray 	arguments := anArray!

argumentsDo: aBlock	self arguments do: aBlock!

javascriptContentOn: aRenderer	super javascriptContentOn: aRenderer.	self name isEmptyOrNil ifFalse: [		aRenderer document dotProperty: self name ].	aRenderer arguments: [ 		self argumentsDo: [ :each |			aRenderer argument: each ] ]!

name	^ name!

name: aString 	name := aString! !

!JSCall categoriesForMethods!
arguments!accessing!public! !
arguments:!accessing!public! !
argumentsDo:!accessing!public! !
javascriptContentOn:!printing!public! !
name!accessing!public! !
name:!accessing!public! !
!

