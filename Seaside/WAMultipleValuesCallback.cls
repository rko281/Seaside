"Filed out from Dolphin Smalltalk 7"!

WAValuesCallback subclass: #WAMultipleValuesCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMultipleValuesCallback guid: (GUID fromString: '{1cffafa8-d629-4c66-9861-34de784dfe28}')!
WAMultipleValuesCallback comment: ''!
!WAMultipleValuesCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAMultipleValuesCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	| selectedValues keys |	selectedValues := OrderedCollection new.	keys := anOrderedCollection collect: [ :each | each isNil ifFalse: [ each greaseInteger ] ].	keys do: [ :each | values at: each ifPresent: [ :value | selectedValues add: value ] ].	block valueWithPossibleArguments: (Array with: selectedValues) ! !
!WAMultipleValuesCallback categoriesFor: #evaluateWithFieldValues:!evaluation!public! !

