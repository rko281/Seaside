"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAValuesCallback
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAValuesCallback guid: (GUID fromString: '{bceb7c4e-1fa7-4a14-b01b-6d8f39b44d25}')!

WAValuesCallback comment: ''!

!WAValuesCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAValuesCallback methodsFor!

evaluateWithArgument: anObject	values at: anObject greaseInteger ifPresent: [ :value | block valueWithPossibleArguments: (Array with: value) ]!

values	^ values!

values: aDictionary 	values := aDictionary! !

!WAValuesCallback categoriesForMethods!
evaluateWithArgument:!evaluation!public! !
values!accessing!public! !
values:!accessing!public! !
!

!WAValuesCallback class methodsFor!

on: aBlock values: aDictionary	^ self new block: aBlock; values: aDictionary; yourself! !

!WAValuesCallback class categoriesForMethods!
on:values:!instance creation!public! !
!

