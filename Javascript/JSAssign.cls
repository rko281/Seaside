"Filed out from Dolphin Smalltalk"!

JSMember subclass: #JSAssign
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAssign guid: (GUID fromString: '{f3e07048-764a-48cf-afb6-5bdf44339c33}')!

JSAssign comment: 'I assign the decorated object to a global variable.'!

!JSAssign categoriesForClass!Decorations! !

!JSAssign methodsFor!

javascriptContentOn: aStream	aStream		nextPutAll: self name;		nextPut: $=.	super javascriptContentOn: aStream! !

!JSAssign categoriesForMethods!
javascriptContentOn:!printing!public! !
!

