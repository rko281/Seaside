"Filed out from Dolphin Smalltalk 7"!

WAParameterMatch subclass: #WAPlaceholderParameterMatch
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPlaceholderParameterMatch guid: (GUID fromString: '{d8d7d264-1c16-4285-b93b-603102dff0a7}')!
WAPlaceholderParameterMatch comment: ''!
!WAPlaceholderParameterMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAPlaceholderParameterMatch methodsFor!

argumentCount	^ 1!

index	^ index!

initializeWithName: aString index: anInteger	self initializeWithName: aString.	index := anInteger!

mapArgumentsWithParameters: aDictionary into: anArray	anArray at: index put: (aDictionary at: name)!

matchesName: aNameString value: aValueString	^ name = aNameString! !
!WAPlaceholderParameterMatch categoriesFor: #argumentCount!accessing!public! !
!WAPlaceholderParameterMatch categoriesFor: #index!accessing!public! !
!WAPlaceholderParameterMatch categoriesFor: #initializeWithName:index:!initialization!public! !
!WAPlaceholderParameterMatch categoriesFor: #mapArgumentsWithParameters:into:!public! !
!WAPlaceholderParameterMatch categoriesFor: #matchesName:value:!public!testing! !

!WAPlaceholderParameterMatch class methodsFor!

name: aString index: anInteger	^ self basicNew initializeWithName: aString index: anInteger!

name: aNameString value: aValueString arguments: aCollectionOfStrings	^ self		name: aNameString		index: (self			targetIndexOf: (aValueString copyFrom: 2 to: aValueString size - 1)			arguments: aCollectionOfStrings)! !
!WAPlaceholderParameterMatch class categoriesFor: #name:index:!instance creation!public! !
!WAPlaceholderParameterMatch class categoriesFor: #name:value:arguments:!instance creation!public! !

