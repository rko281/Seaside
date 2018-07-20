"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAValuesCallback
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValuesCallback guid: (GUID fromString: '{0a4f0d9c-c488-4913-a9b7-bf41278a3799}')!
WAValuesCallback comment: ''!
!WAValuesCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAValuesCallback methodsFor!

evaluateWithArgument: anObject	values at: anObject greaseInteger ifPresent: [ :value | block valueWithPossibleArguments: (Array with: value) ]!

values	^ values!

values: aDictionary 	values := aDictionary! !
!WAValuesCallback categoriesFor: #evaluateWithArgument:!evaluation!public! !
!WAValuesCallback categoriesFor: #values!accessing!public! !
!WAValuesCallback categoriesFor: #values:!accessing!public! !

!WAValuesCallback class methodsFor!

on: aBlock values: aDictionary	^ self new block: aBlock; values: aDictionary; yourself! !
!WAValuesCallback class categoriesFor: #on:values:!instance creation!public! !

