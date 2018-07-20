"Filed out from Dolphin Smalltalk 7"!

JSMember subclass: #JSAssign
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAssign guid: (GUID fromString: '{c0290617-6614-400b-ab5d-ee0e1074a6b1}')!
JSAssign comment: 'I assign the decorated object to a global variable.'!
!JSAssign categoriesForClass!Javascript-Core-Decorations! !
!JSAssign methodsFor!

javascriptContentOn: aStream	aStream		nextPutAll: self name;		nextPut: $=.	super javascriptContentOn: aStream! !
!JSAssign categoriesFor: #javascriptContentOn:!printing!public! !

