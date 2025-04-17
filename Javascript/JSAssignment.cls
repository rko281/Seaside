"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSAssignment
	instanceVariableNames: 'object'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAssignment guid: (GUID fromString: '{fd857989-5cd8-44c5-8b8a-f376d2d3c13d}')!

JSAssignment comment: 'I represent an assignment ot the decorated object.'!

!JSAssignment categoriesForClass!Decorations! !

!JSAssignment methodsFor!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream		nextPutAll: '=';		javascript: self object!

object	^ object!

object: anObject	object := anObject! !

!JSAssignment categoriesForMethods!
javascriptContentOn:!printing!public! !
object!accessing!public! !
object:!accessing!public! !
!

