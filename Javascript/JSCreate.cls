"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSCreate
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSCreate guid: (GUID fromString: '{be3955f6-5b42-45ea-b9ab-48de18f10ea6}')!
JSCreate comment: 'I instantiate the decorated object.'!
!JSCreate categoriesForClass!Javascript-Core-Decorations! !
!JSCreate methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'new '.	super javascriptContentOn: aStream! !
!JSCreate categoriesFor: #javascriptContentOn:!printing!public! !

