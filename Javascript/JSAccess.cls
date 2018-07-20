"Filed out from Dolphin Smalltalk 7"!

JSMember subclass: #JSAccess
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAccess guid: (GUID fromString: '{22cf000d-0e4a-4f6e-95b3-7b0a5fb957fb}')!
JSAccess comment: 'I access a member of the decorated object.'!
!JSAccess categoriesForClass!Javascript-Core-Decorations! !
!JSAccess methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPut: $.;		nextPutAll: self name! !
!JSAccess categoriesFor: #javascriptContentOn:!printing!public! !

