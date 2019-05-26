"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSStatement
	instanceVariableNames: 'statement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSStatement guid: (GUID fromString: '{44a54d40-89c4-4a15-b8cc-a48d6671f8d9}')!
JSStatement comment: ''!
!JSStatement categoriesForClass!Javascript-Core-Decorations! !
!JSStatement methodsFor!

statement	^ statement!

statement: anObject	statement := anObject! !
!JSStatement categoriesFor: #statement!accessing!public! !
!JSStatement categoriesFor: #statement:!accessing!public! !

!JSStatement class methodsFor!

on: anObject	^ self new statement: anObject! !
!JSStatement class categoriesFor: #on:!instance creation!public! !

