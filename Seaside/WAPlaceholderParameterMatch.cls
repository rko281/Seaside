"Filed out from Dolphin Smalltalk"!

WAParameterMatch subclass: #WAPlaceholderParameterMatch
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPlaceholderParameterMatch guid: (GUID fromString: '{3a51c577-bca6-40da-9bd8-8a7f0a558ed4}')!

WAPlaceholderParameterMatch comment: ''!

!WAPlaceholderParameterMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAPlaceholderParameterMatch methodsFor!

argumentCount	^ 1!

index	^ index!

initializeWithName: aString index: anInteger	self initializeWithName: aString.	index := anInteger!

mapArgumentsWithParameters: aDictionary into: anArray	anArray at: index put: (aDictionary at: name)!

matchesName: aNameString value: aValueString	^ name = aNameString! !

!WAPlaceholderParameterMatch categoriesForMethods!
argumentCount!accessing!public! !
index!accessing!public! !
initializeWithName:index:!initialization!public! !
mapArgumentsWithParameters:into:!public! !
matchesName:value:!public!testing! !
!

!WAPlaceholderParameterMatch class methodsFor!

name: aString index: anInteger	^ self basicNew initializeWithName: aString index: anInteger!

name: aNameString value: aValueString arguments: aCollectionOfStrings	^ self		name: aNameString		index: (self			targetIndexOf: (aValueString copyFrom: 2 to: aValueString size - 1)			arguments: aCollectionOfStrings)! !

!WAPlaceholderParameterMatch class categoriesForMethods!
name:index:!instance creation!public! !
name:value:arguments:!instance creation!public! !
!

