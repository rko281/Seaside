"Filed out from Dolphin Smalltalk"!

WAValuesCallback subclass: #WAMultipleValuesCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMultipleValuesCallback guid: (GUID fromString: '{be196f1b-a5cd-4845-bf81-d837bad5adb7}')!

WAMultipleValuesCallback comment: ''!

!WAMultipleValuesCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAMultipleValuesCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	| selectedValues keys |	selectedValues := OrderedCollection new.	keys := anOrderedCollection collect: [ :each | each isNil ifFalse: [ each greaseInteger ] ].	keys do: [ :each | values at: each ifPresent: [ :value | selectedValues add: value ] ].	block valueWithPossibleArguments: (Array with: selectedValues)! !

!WAMultipleValuesCallback categoriesForMethods!
evaluateWithFieldValues:!evaluation!public! !
!

