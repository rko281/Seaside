"Filed out from Dolphin Smalltalk 7"!

JSMember subclass: #JSAlias
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAlias guid: (GUID fromString: '{4b54fa68-39de-4a2c-9e64-80c5ce5dd9bb}')!
JSAlias comment: 'I alias the decorated object with a name.'!
!JSAlias categoriesForClass!Javascript-Core-Decorations! !
!JSAlias methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: self name! !
!JSAlias categoriesFor: #javascriptContentOn:!printing!public! !

