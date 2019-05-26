"Filed out from Dolphin Smalltalk 7"!

JSMember subclass: #JSAssign
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAssign guid: (GUID fromString: '{7b6dbe4b-4b1c-49ee-a6d0-cc4f181203ab}')!
JSAssign comment: 'I assign the decorated object to a global variable.'!
!JSAssign categoriesForClass!Javascript-Core-Decorations! !
!JSAssign methodsFor!

javascriptContentOn: aStream	aStream		nextPutAll: self name;		nextPut: $=.	super javascriptContentOn: aStream! !
!JSAssign categoriesFor: #javascriptContentOn:!printing!public! !

