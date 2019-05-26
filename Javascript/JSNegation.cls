"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSNegation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSNegation guid: (GUID fromString: '{acc70a10-2dc6-47f3-8f31-a15c96099409}')!
JSNegation comment: 'I negate the decorated object and yield a boolean value.'!
!JSNegation categoriesForClass!Javascript-Core-Decorations! !
!JSNegation methodsFor!

javascriptContentOn: aStream	aStream nextPut: $!!.	super javascriptContentOn: aStream! !
!JSNegation categoriesFor: #javascriptContentOn:!printing!public! !

