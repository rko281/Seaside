"Filed out from Dolphin Smalltalk 7"!

JSAssign subclass: #JSAssignLocal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAssignLocal guid: (GUID fromString: '{88e10f5d-bc50-4f15-9cd4-9e9b4e9bd02e}')!
JSAssignLocal comment: 'I assign the decorated object to a local variable.'!
!JSAssignLocal categoriesForClass!Javascript-Core-Decorations! !
!JSAssignLocal methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'var '.	super javascriptContentOn: aStream! !
!JSAssignLocal categoriesFor: #javascriptContentOn:!printing!public! !

