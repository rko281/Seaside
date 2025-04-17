"Filed out from Dolphin Smalltalk"!

WAError subclass: #WATaskNotDelegated
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATaskNotDelegated guid: (GUID fromString: '{5a12d6e1-7ebd-4c0c-91df-649dcd9c9670}')!

WATaskNotDelegated comment: ''!

!WATaskNotDelegated categoriesForClass!Tasks! !

!WATaskNotDelegated methodsFor!

seasidePossibleCauses	^ #('The Task is embedded in another Component but has not been included in the list of child Components returned by the Component''s #children method.' 'The Task has an empty #go method.' 'The Task does not call another Component in its #go method.' 'The #go method is written to depend on the looping execution of Tasks. If the Task needs looping behaviour without calling a Component, implement the looping behaviour within the #go method.')! !

!WATaskNotDelegated categoriesForMethods!
seasidePossibleCauses!accessing!public! !
!

