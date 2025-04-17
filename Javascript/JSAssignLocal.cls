"Filed out from Dolphin Smalltalk"!

JSAssign subclass: #JSAssignLocal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAssignLocal guid: (GUID fromString: '{24736811-99b2-4adb-87d0-1ba37d884f5e}')!

JSAssignLocal comment: 'I assign the decorated object to a local variable.'!

!JSAssignLocal categoriesForClass!Decorations! !

!JSAssignLocal methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'var '.	super javascriptContentOn: aStream! !

!JSAssignLocal categoriesForMethods!
javascriptContentOn:!printing!public! !
!

