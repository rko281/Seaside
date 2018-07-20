"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSNegation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSNegation guid: (GUID fromString: '{ff014cde-21bf-4207-b019-949b8841d50b}')!
JSNegation comment: 'I negate the decorated object and yield a boolean value.'!
!JSNegation categoriesForClass!Javascript-Core-Decorations! !
!JSNegation methodsFor!

javascriptContentOn: aStream	aStream nextPut: $!!.	super javascriptContentOn: aStream! !
!JSNegation categoriesFor: #javascriptContentOn:!printing!public! !

