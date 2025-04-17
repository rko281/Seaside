"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSNegation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSNegation guid: (GUID fromString: '{b40a72ec-7c89-4c7b-87e7-710821f856f3}')!

JSNegation comment: 'I negate the decorated object and yield a boolean value.'!

!JSNegation categoriesForClass!Decorations! !

!JSNegation methodsFor!

javascriptContentOn: aStream	aStream nextPut: $!!.	super javascriptContentOn: aStream! !

!JSNegation categoriesForMethods!
javascriptContentOn:!printing!public! !
!

