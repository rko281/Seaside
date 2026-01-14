"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSApply
	instanceVariableNames: 'arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSApply guid: (GUID fromString: '{f299ad15-65ae-4514-ba15-75d55c1d77e5}')!

JSApply comment: 'I apply a JavaScript function and provide arguments.'!

!JSApply categoriesForClass!Javascript-Core-Decorations! !

!JSApply methodsFor!

arguments	^ arguments!

arguments: aCollection	arguments := aCollection!

argumentsDo: aBlock	self arguments do: aBlock!

javascriptContentOn: aRenderer	super javascriptContentOn: aRenderer.	aRenderer arguments: [ 		self argumentsDo: [ :each |			aRenderer argument: each ] ]! !

!JSApply categoriesForMethods!
arguments!accessing!public! !
arguments:!accessing!public! !
argumentsDo:!accessing!public! !
javascriptContentOn:!printing!public! !
!

