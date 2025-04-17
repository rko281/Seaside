"Filed out from Dolphin Smalltalk"!

JSCondition subclass: #JSConditionElse
	instanceVariableNames: 'elseStatement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSConditionElse guid: (GUID fromString: '{5ca1c088-f758-4ad5-9904-47f73c5e272a}')!

JSConditionElse comment: ''!

!JSConditionElse categoriesForClass!Decorations! !

!JSConditionElse methodsFor!

elseStatement	^ elseStatement!

elseStatement: anObject	elseStatement := anObject!

javascriptContentOn: aStream	super javascriptContentOn: aStream.	aStream 		nextPutAll: 'else{';		javascript: self elseStatement.	aStream nextPut: $}! !

!JSConditionElse categoriesForMethods!
elseStatement!accessing!public! !
elseStatement:!accessing!public! !
javascriptContentOn:!accessing!public! !
!

!JSConditionElse class methodsFor!

on: statement else: elseStatement	^ (super on: statement)		elseStatement: elseStatement;		yourself! !

!JSConditionElse class categoriesForMethods!
on:else:!instance creation!public! !
!

