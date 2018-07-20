"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSMember
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSMember guid: (GUID fromString: '{815f6e1f-8ef8-4876-830c-f592f02c07ae}')!
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

