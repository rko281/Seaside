"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSStatement
	instanceVariableNames: 'statement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSStatement guid: (GUID fromString: '{19f0fdc8-60a5-4507-86d1-eb4e5ab1c2e4}')!
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

