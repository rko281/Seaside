"Filed out from Dolphin Smalltalk"!

JSStatement subclass: #JSCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSCondition guid: (GUID fromString: '{58557e40-1af4-4a85-a4c5-7d4b969e2f65}')!

JSCondition comment: 'I wrap the decorated object into a conditional statement.'!

!JSCondition categoriesForClass!Javascript-Core-Decorations! !

!JSCondition methodsFor!

javascriptContentOn: aRenderer	(aRenderer function: 'if')		with: [ 			aRenderer render: self statement ].	aRenderer document openBlock.	super javascriptContentOn: aRenderer.	aRenderer document closeBlock.! !

!JSCondition categoriesForMethods!
javascriptContentOn:!printing!public! !
!

