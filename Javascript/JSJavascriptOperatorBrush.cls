"Filed out from Dolphin Smalltalk"!

JSJavascriptBrush subclass: #JSJavascriptOperatorBrush
	instanceVariableNames: 'operator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJavascriptOperatorBrush guid: (GUID fromString: '{cee86980-eb82-4cb9-97e0-dafad028564b}')!

JSJavascriptOperatorBrush comment: ''!

!JSJavascriptOperatorBrush categoriesForClass!Javascript-Core-Brushes! !

!JSJavascriptOperatorBrush methodsFor!

closeBrush!

initializeWithOperator: aString	self initialize.	operator := aString!

openBrush	self document operator: operator! !

!JSJavascriptOperatorBrush categoriesForMethods!
closeBrush!private! !
initializeWithOperator:!initialization!public! !
openBrush!private! !
!

!JSJavascriptOperatorBrush class methodsFor!

operator: aString	^ self basicNew initializeWithOperator: aString! !

!JSJavascriptOperatorBrush class categoriesForMethods!
operator:!instance creation!public! !
!

