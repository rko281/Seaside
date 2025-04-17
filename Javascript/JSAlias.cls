"Filed out from Dolphin Smalltalk"!

JSMember subclass: #JSAlias
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAlias guid: (GUID fromString: '{70618c69-9e89-4a76-bfc6-e56cfa4a56f2}')!

JSAlias comment: 'I alias the decorated object with a name.'!

!JSAlias categoriesForClass!Decorations! !

!JSAlias methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: self name! !

!JSAlias categoriesForMethods!
javascriptContentOn:!printing!public! !
!

