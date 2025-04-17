"Filed out from Dolphin Smalltalk"!

JSStatement subclass: #JSCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSCondition guid: (GUID fromString: '{7774ecae-b08e-4081-8471-a84181ec0747}')!

JSCondition comment: 'I wrap the decorated object into a conditional statement.'!

!JSCondition categoriesForClass!Decorations! !

!JSCondition methodsFor!

javascriptContentOn: aStream	aStream		nextPutAll: 'if(';		javascript: self statement;		nextPutAll: '){'.	super javascriptContentOn: aStream.	aStream nextPut: $}! !

!JSCondition categoriesForMethods!
javascriptContentOn:!printing!public! !
!

