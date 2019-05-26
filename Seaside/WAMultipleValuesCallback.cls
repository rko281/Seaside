"Filed out from Dolphin Smalltalk 7"!

WAValuesCallback subclass: #WAMultipleValuesCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMultipleValuesCallback guid: (GUID fromString: '{775d01a9-6ecc-43a7-bbde-cccf3a680aff}')!
WAMultipleValuesCallback comment: ''!
!WAMultipleValuesCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAMultipleValuesCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	| selectedValues keys |	selectedValues := OrderedCollection new.	keys := anOrderedCollection collect: [ :each | each isNil ifFalse: [ each greaseInteger ] ].	keys do: [ :each | values at: each ifPresent: [ :value | selectedValues add: value ] ].	block valueWithPossibleArguments: (Array with: selectedValues) ! !
!WAMultipleValuesCallback categoriesFor: #evaluateWithFieldValues:!evaluation!public! !

