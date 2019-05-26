"Filed out from Dolphin Smalltalk 7"!

JSAssign subclass: #JSAssignLocal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAssignLocal guid: (GUID fromString: '{48c11134-db9c-4b80-ae99-8e5467bdff95}')!
JSAssignLocal comment: 'I assign the decorated object to a local variable.'!
!JSAssignLocal categoriesForClass!Javascript-Core-Decorations! !
!JSAssignLocal methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'var '.	super javascriptContentOn: aStream! !
!JSAssignLocal categoriesFor: #javascriptContentOn:!printing!public! !

