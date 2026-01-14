"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSCreate
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSCreate guid: (GUID fromString: '{1a8bef4c-a9a7-4d0a-b594-560ab703a341}')!

JSCreate comment: 'I instantiate the decorated object.'!

!JSCreate categoriesForClass!Javascript-Core-Decorations! !

!JSCreate methodsFor!

javascriptContentOn: aRenderer	aRenderer document keyword: 'new'.	super javascriptContentOn: aRenderer! !

!JSCreate categoriesForMethods!
javascriptContentOn:!printing!public! !
!

