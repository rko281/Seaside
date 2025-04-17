"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSMember
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSMember guid: (GUID fromString: '{3f1d0f3a-67bb-41dd-a446-4d120882b64e}')!

JSMember comment: ''!

!JSMember categoriesForClass!Decorations! !

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

