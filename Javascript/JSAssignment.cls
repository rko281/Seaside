"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSAssignment
	instanceVariableNames: 'object'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAssignment guid: (GUID fromString: '{77501e54-6fa9-404a-b71f-f4c2fb027e79}')!
JSAssignment comment: 'I represent an assignment ot the decorated object.'!
!JSAssignment categoriesForClass!Javascript-Core-Decorations! !
!JSAssignment methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPutAll: '=';		javascript: self object!

object	^ object!

object: anObject	object := anObject! !
!JSAssignment categoriesFor: #javascriptContentOn:!printing!public! !
!JSAssignment categoriesFor: #object!accessing!public! !
!JSAssignment categoriesFor: #object:!accessing!public! !

