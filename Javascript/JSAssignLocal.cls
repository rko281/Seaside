"Filed out from Dolphin Smalltalk"!

JSAssign subclass: #JSAssignLocal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAssignLocal guid: (GUID fromString: '{5e09bff1-5347-4693-bd70-4f443a424733}')!

JSAssignLocal comment: 'I assign the decorated object to a local variable.'!

!JSAssignLocal categoriesForClass!Javascript-Core-Decorations! !

!JSAssignLocal methodsFor!

javascriptContentOn: aRenderer	aRenderer document keyword: 'var'.	super javascriptContentOn: aRenderer! !

!JSAssignLocal categoriesForMethods!
javascriptContentOn:!printing!public! !
!

