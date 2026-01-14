"Filed out from Dolphin Smalltalk"!

JSCondition subclass: #JSConditionElse
	instanceVariableNames: 'elseStatement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSConditionElse guid: (GUID fromString: '{c2d8a5c8-1286-44e0-8bef-4f9cfea6db30}')!

JSConditionElse comment: ''!

!JSConditionElse categoriesForClass!Javascript-Core-Decorations! !

!JSConditionElse methodsFor!

elseStatement	^ elseStatement!

elseStatement: anObject	elseStatement := anObject!

javascriptContentOn: aRenderer	super javascriptContentOn: aRenderer.	aRenderer document 		nextPutAll: 'else';		openBlock.	aRenderer render: self elseStatement.	aRenderer document closeBlock! !

!JSConditionElse categoriesForMethods!
elseStatement!accessing!public! !
elseStatement:!accessing!public! !
javascriptContentOn:!printing!public! !
!

!JSConditionElse class methodsFor!

on: statement else: elseStatement	^ (super on: statement)		elseStatement: elseStatement;		yourself! !

!JSConditionElse class categoriesForMethods!
on:else:!instance creation!public! !
!

