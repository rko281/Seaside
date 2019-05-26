"Filed out from Dolphin Smalltalk 7"!

JSStatement subclass: #JSCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSCondition guid: (GUID fromString: '{bbb30437-d61d-4006-929f-5c671a2eac07}')!
JSCondition comment: 'I wrap the decorated object into a conditional statement.'!
!JSCondition categoriesForClass!Javascript-Core-Decorations! !
!JSCondition methodsFor!

javascriptContentOn: aStream	aStream		nextPutAll: 'if(';		javascript: self statement;		nextPutAll: '){'.	super javascriptContentOn: aStream.	aStream nextPut: $}! !
!JSCondition categoriesFor: #javascriptContentOn:!printing!public! !

