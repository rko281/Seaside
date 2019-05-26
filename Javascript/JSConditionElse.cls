"Filed out from Dolphin Smalltalk 7"!

JSCondition subclass: #JSConditionElse
	instanceVariableNames: 'elseStatement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSConditionElse guid: (GUID fromString: '{e26821d7-e197-4bac-a2b9-4222c2157371}')!
JSConditionElse comment: ''!
!JSConditionElse categoriesForClass!Javascript-Core-Decorations! !
!JSConditionElse methodsFor!

elseStatement	^ elseStatement!

elseStatement: anObject	elseStatement := anObject!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream 		nextPutAll: 'else{';		javascript: self elseStatement.	aStream nextPut: $}! !
!JSConditionElse categoriesFor: #elseStatement!accessing!public! !
!JSConditionElse categoriesFor: #elseStatement:!accessing!public! !
!JSConditionElse categoriesFor: #javascriptContentOn:!accessing!public! !

!JSConditionElse class methodsFor!

on: statement else: elseStatement	^ (super on: statement)		elseStatement: elseStatement;		yourself! !
!JSConditionElse class categoriesFor: #on:else:!instance creation!public! !

