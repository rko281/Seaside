"Filed out from Dolphin Smalltalk"!

WAValuesCallback subclass: #WAMultipleValuesCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMultipleValuesCallback guid: (GUID fromString: '{9f4210c6-b700-4788-ae2f-afe55ae45a9e}')!

WAMultipleValuesCallback comment: ''!

!WAMultipleValuesCallback categoriesForClass!Callbacks! !

!WAMultipleValuesCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	| selectedValues keys |	selectedValues := OrderedCollection new.	keys := anOrderedCollection collect: [ :each | each isNil ifFalse: [ each greaseInteger ] ].	keys do: [ :each | values at: each ifPresent: [ :value | selectedValues add: value ] ].	block valueWithPossibleArguments: (Array with: selectedValues)! !

!WAMultipleValuesCallback categoriesForMethods!
evaluateWithFieldValues:!evaluation!public! !
!

