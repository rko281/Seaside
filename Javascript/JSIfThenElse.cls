"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSIfThenElse
	instanceVariableNames: 'trueStatement falseStatement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSIfThenElse guid: (GUID fromString: '{35a2e543-3887-4634-b01c-b45af378cee4}')!

JSIfThenElse comment: 'I execute different code snippets depending if the receiver is true (defined) or false (null).'!

!JSIfThenElse categoriesForClass!Javascript-Core-Decorations! !

!JSIfThenElse methodsFor!

falseStatement	^ falseStatement!

falseStatement: anObject	falseStatement := anObject!

javascriptContentOn: aRenderer	aRenderer document nextPut: $(.	super javascriptContentOn: aRenderer.	aRenderer document nextPut: $?.	aRenderer render: self trueStatement.	aRenderer document nextPut: $:.	aRenderer render: self falseStatement.	aRenderer document nextPut: $)!

trueStatement	^ trueStatement!

trueStatement: anObject	trueStatement := anObject! !

!JSIfThenElse categoriesForMethods!
falseStatement!accessing!public! !
falseStatement:!accessing!public! !
javascriptContentOn:!printing!public! !
trueStatement!accessing!public! !
trueStatement:!accessing!public! !
!

