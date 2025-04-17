"Filed out from Dolphin Smalltalk"!

JSMember subclass: #JSAccess
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAccess guid: (GUID fromString: '{1d6412a8-b0eb-465d-80f5-dfd4d62a7bb4}')!

JSAccess comment: 'I access a member of the decorated object.'!

!JSAccess categoriesForClass!Decorations! !

!JSAccess methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPut: $.;		nextPutAll: self name! !

!JSAccess categoriesForMethods!
javascriptContentOn:!printing!public! !
!

