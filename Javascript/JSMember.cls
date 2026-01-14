"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSMember
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSMember guid: (GUID fromString: '{d6227203-2b86-4049-ba9f-52c0310cd124}')!

JSMember comment: ''!

!JSMember categoriesForClass!Javascript-Core-Decorations! !

!JSMember methodsFor!

name	^ name!

name: aString	name := aString! !

!JSMember categoriesForMethods!
name!accessing!public! !
name:!accessing!public! !
!

!JSMember class methodsFor!

named: anObject	^ self new name: anObject! !

!JSMember class categoriesForMethods!
named:!instance creation!public! !
!

