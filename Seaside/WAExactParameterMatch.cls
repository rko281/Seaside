"Filed out from Dolphin Smalltalk 7"!

WAParameterMatch subclass: #WAExactParameterMatch
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExactParameterMatch guid: (GUID fromString: '{212af9be-a8f7-4ecf-9dc8-1f4f54f54f9a}')!
WAExactParameterMatch comment: ''!
!WAExactParameterMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAExactParameterMatch methodsFor!

argumentCount	^ 0!

initializeWithName: aNameString value: aValueString	self initializeWithName: aNameString.	value := aValueString!

mapArgumentsWithParameters: aDictionary into: anArray	"ignore"!

matchesName: aNameString value: aValueString	^ name = aNameString and: [ value = aValueString ]! !
!WAExactParameterMatch categoriesFor: #argumentCount!accessing!public! !
!WAExactParameterMatch categoriesFor: #initializeWithName:value:!initialization!public! !
!WAExactParameterMatch categoriesFor: #mapArgumentsWithParameters:into:!public! !
!WAExactParameterMatch categoriesFor: #matchesName:value:!public!testing! !

!WAExactParameterMatch class methodsFor!

name: aNameString value: aValueString arguments: aCollectionOfStrings 	^ self basicNew initializeWithName: aNameString value: aValueString! !
!WAExactParameterMatch class categoriesFor: #name:value:arguments:!instance creation!public! !

