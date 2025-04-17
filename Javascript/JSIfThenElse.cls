"Filed out from Dolphin Smalltalk"!

JSDecoration subclass: #JSIfThenElse
	instanceVariableNames: 'trueStatement falseStatement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSIfThenElse guid: (GUID fromString: '{f88c8cf9-3b63-4a68-ac81-60b80be12b6c}')!

JSIfThenElse comment: 'I execute different code snippets depending if the receiver is true (defined) or false (null).'!

!JSIfThenElse categoriesForClass!Decorations! !

!JSIfThenElse methodsFor!

falseStatement	^ falseStatement!

falseStatement: anObject	falseStatement := anObject!

javascriptContentOn: aStream	aStream nextPut: $(.	super javascriptContentOn: aStream.	aStream nextPut: $?.	aStream javascript: self trueStatement.	aStream nextPut: $:.	aStream javascript: self falseStatement.	aStream nextPut: $)!

trueStatement	^ trueStatement!

trueStatement: anObject	trueStatement := anObject! !

!JSIfThenElse categoriesForMethods!
falseStatement!accessing!public! !
falseStatement:!accessing!public! !
javascriptContentOn:!printing!public! !
trueStatement!accessing!public! !
trueStatement:!accessing!public! !
!

