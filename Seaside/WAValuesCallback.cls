"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAValuesCallback
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValuesCallback guid: (GUID fromString: '{8e50444c-48ec-4365-9bf9-dbfc05abfe99}')!
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

