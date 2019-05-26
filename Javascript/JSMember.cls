"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSMember
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSMember guid: (GUID fromString: '{9a1aa933-6773-458b-a112-f9520f7caea1}')!
JSMember comment: ''!
!JSMember categoriesForClass!Javascript-Core-Decorations! !
!JSMember methodsFor!

name	^ name!

name: aString	name := aString! !
!JSMember categoriesFor: #name!accessing!public! !
!JSMember categoriesFor: #name:!accessing!public! !

!JSMember class methodsFor!

named: anObject	^ self new name: anObject! !
!JSMember class categoriesFor: #named:!instance creation!public! !

