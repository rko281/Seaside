"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSCreate
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSCreate guid: (GUID fromString: '{99533929-f5d4-423c-bfa5-0b9ca4be5c88}')!
JSCreate comment: 'I instantiate the decorated object.'!
!JSCreate categoriesForClass!Javascript-Core-Decorations! !
!JSCreate methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'new '.	super javascriptContentOn: aStream! !
!JSCreate categoriesFor: #javascriptContentOn:!printing!public! !

