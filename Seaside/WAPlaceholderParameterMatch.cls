﻿"Filed out from Dolphin Smalltalk"!

WAParameterMatch subclass: #WAPlaceholderParameterMatch
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPlaceholderParameterMatch guid: (GUID fromString: '{e1ac492e-e503-4c2b-9f94-b5a3959d340f}')!

WAPlaceholderParameterMatch comment: ''!

!WAPlaceholderParameterMatch categoriesForClass!Route! !

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

