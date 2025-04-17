"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAValuesCallback
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAValuesCallback guid: (GUID fromString: '{dfc2c292-5962-4c42-bf07-4a8321776523}')!

WAValuesCallback comment: ''!

!WAValuesCallback categoriesForClass!Callbacks! !

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

