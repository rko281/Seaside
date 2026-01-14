"Filed out from Dolphin Smalltalk"!

JSStatement subclass: #JSBinary
	instanceVariableNames: 'operator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSBinary guid: (GUID fromString: '{7eee8a92-b318-4ecc-9ec6-26e24328fdae}')!

JSBinary comment: 'I join the decorated object with a binary operator.'!

!JSBinary categoriesForClass!Javascript-Core-Decorations! !

!JSBinary methodsFor!

javascriptContentOn: aRenderer	super javascriptContentOn: aRenderer.	(aRenderer operator: self operator)		with: self statement!

operator	^ operator!

operator: aString	operator := aString! !

!JSBinary categoriesForMethods!
javascriptContentOn:!printing!public! !
operator!accessing!public! !
operator:!accessing!public! !
!

