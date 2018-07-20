"Filed out from Dolphin Smalltalk 7"!

JSMember subclass: #JSAlias
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAlias guid: (GUID fromString: '{df7a4130-1440-4286-ab8c-789741575673}')!
JSAlias comment: 'I alias the decorated object with a name.'!
!JSAlias categoriesForClass!Javascript-Core-Decorations! !
!JSAlias methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: self name! !
!JSAlias categoriesFor: #javascriptContentOn:!printing!public! !

