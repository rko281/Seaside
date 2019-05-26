"Filed out from Dolphin Smalltalk 7"!

JSStatement subclass: #JSBinary
	instanceVariableNames: 'operator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSBinary guid: (GUID fromString: '{1993c261-4348-4ae8-8d1c-3e7e54da679e}')!
JSBinary comment: 'I join the decorated object with a binary operator.'!
!JSBinary categoriesForClass!Javascript-Core-Decorations! !
!JSBinary methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPutAll: self operator;		javascript: self statement!

operator	^ operator!

operator: aString	operator := aString! !
!JSBinary categoriesFor: #javascriptContentOn:!printing!public! !
!JSBinary categoriesFor: #operator!accessing!public! !
!JSBinary categoriesFor: #operator:!accessing!public! !

