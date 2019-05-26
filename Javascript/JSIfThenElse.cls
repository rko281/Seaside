"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSIfThenElse
	instanceVariableNames: 'trueStatement falseStatement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSIfThenElse guid: (GUID fromString: '{d54ef196-7bab-4953-8869-68d416c758f0}')!
JSIfThenElse comment: 'I execute different code snippets depending if the receiver is true (defined) or false (null).'!
!JSIfThenElse categoriesForClass!Javascript-Core-Decorations! !
!JSIfThenElse methodsFor!

falseStatement	^ falseStatement!

falseStatement: anObject	falseStatement := anObject!

javascriptContentOn: aStream	aStream nextPut: $(.	super javascriptContentOn: aStream.	aStream nextPut: $?.	aStream javascript: self trueStatement.	aStream nextPut: $:.	aStream javascript: self falseStatement.	aStream nextPut: $)!

trueStatement	^ trueStatement!

trueStatement: anObject	trueStatement := anObject! !
!JSIfThenElse categoriesFor: #falseStatement!accessing!public! !
!JSIfThenElse categoriesFor: #falseStatement:!accessing!public! !
!JSIfThenElse categoriesFor: #javascriptContentOn:!printing!public! !
!JSIfThenElse categoriesFor: #trueStatement!accessing!public! !
!JSIfThenElse categoriesFor: #trueStatement:!accessing!public! !

