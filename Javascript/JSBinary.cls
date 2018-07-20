"Filed out from Dolphin Smalltalk 7"!

JSStatement subclass: #JSBinary
	instanceVariableNames: 'operator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSBinary guid: (GUID fromString: '{85b68308-bc87-428f-a6ba-4c40eec891c3}')!
JSBinary comment: 'I join the decorated object with a binary operator.'!
!JSBinary categoriesForClass!Javascript-Core-Decorations! !
!JSBinary methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPutAll: self operator;		javascript: self statement!

operator	^ operator!

operator: aString	operator := aString! !
!JSBinary categoriesFor: #javascriptContentOn:!printing!public! !
!JSBinary categoriesFor: #operator!accessing!public! !
!JSBinary categoriesFor: #operator:!accessing!public! !

