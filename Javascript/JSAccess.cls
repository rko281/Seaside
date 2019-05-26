"Filed out from Dolphin Smalltalk 7"!

JSMember subclass: #JSAccess
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAccess guid: (GUID fromString: '{7939ceca-9df4-49e9-8982-92c9e2a1ff6a}')!
JSAccess comment: 'I access a member of the decorated object.'!
!JSAccess categoriesForClass!Javascript-Core-Decorations! !
!JSAccess methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPut: $.;		nextPutAll: self name! !
!JSAccess categoriesFor: #javascriptContentOn:!printing!public! !

