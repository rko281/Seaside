"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSCreate
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSCreate guid: (GUID fromString: '{9dd9da51-863f-4abe-8364-0a750ba1d03b}')!

JSCreate comment: 'I instantiate the decorated object.'!

!JSCreate categoriesForClass!Decorations! !

!JSCreate methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'new '.	super javascriptContentOn: aStream! !

!JSCreate categoriesForMethods!
javascriptContentOn:!printing!public! !
!

