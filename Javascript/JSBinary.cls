"Filed out from Dolphin Smalltalk"!

JSStatement subclass: #JSBinary
	instanceVariableNames: 'operator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSBinary guid: (GUID fromString: '{328b5d0b-be31-4ae5-b96e-41d59954407a}')!

JSBinary comment: 'I join the decorated object with a binary operator.'!

!JSBinary categoriesForClass!Decorations! !

!JSBinary methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPutAll: self operator;		javascript: self statement!

operator	^ operator!

operator: aString	operator := aString! !

!JSBinary categoriesForMethods!
javascriptContentOn:!printing!public! !
operator!accessing!public! !
operator:!accessing!public! !
!

