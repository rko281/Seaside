"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSAssignment
	instanceVariableNames: 'object'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAssignment guid: (GUID fromString: '{91ec020f-0422-45bb-94ae-f9f3d249b8fa}')!

JSAssignment comment: 'I represent an assignment ot the decorated object.'!

!JSAssignment categoriesForClass!Javascript-Core-Decorations! !

!JSAssignment methodsFor!

javascriptContentOn: aRenderer	super javascriptContentOn: aRenderer.	aRenderer assignment: [ 		aRenderer render: self object ]!

object	^ object!

object: anObject	object := anObject! !

!JSAssignment categoriesForMethods!
javascriptContentOn:!printing!public! !
object!accessing!public! !
object:!accessing!public! !
!

