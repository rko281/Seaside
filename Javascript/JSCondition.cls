"Filed out from Dolphin Smalltalk 7"!

JSStatement subclass: #JSCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSCondition guid: (GUID fromString: '{97c21599-b7af-44c1-a84e-9d030edd187f}')!
JSCondition comment: 'I wrap the decorated object into a conditional statement.'!
!JSCondition categoriesForClass!Javascript-Core-Decorations! !
!JSCondition methodsFor!

javascriptContentOn: aStream	aStream		nextPutAll: 'if(';		javascript: self statement;		nextPutAll: '){'.	super javascriptContentOn: aStream.	aStream nextPut: $}! !
!JSCondition categoriesFor: #javascriptContentOn:!printing!public! !

