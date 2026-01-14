"Filed out from Dolphin Smalltalk"!

WAParameterMatch subclass: #WAExactParameterMatch
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExactParameterMatch guid: (GUID fromString: '{f9eeb51d-e493-4d01-879c-5c27cfb1b7ad}')!

WAExactParameterMatch comment: ''!

!WAExactParameterMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAExactParameterMatch methodsFor!

argumentCount	^ 0!

initializeWithName: aNameString value: aValueString	self initializeWithName: aNameString.	value := aValueString!

mapArgumentsWithParameters: aDictionary into: anArray	"ignore"!

matchesName: aNameString value: aValueString	^ name = aNameString and: [ value = aValueString ]! !

!WAExactParameterMatch categoriesForMethods!
argumentCount!accessing!public! !
initializeWithName:value:!initialization!public! !
mapArgumentsWithParameters:into:!public! !
matchesName:value:!public!testing! !
!

!WAExactParameterMatch class methodsFor!

name: aNameString value: aValueString arguments: aCollectionOfStrings 	^ self basicNew initializeWithName: aNameString value: aValueString! !

!WAExactParameterMatch class categoriesForMethods!
name:value:arguments:!instance creation!public! !
!

