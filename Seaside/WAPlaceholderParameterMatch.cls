﻿"Filed out from Dolphin Smalltalk 7"!

WAParameterMatch subclass: #WAPlaceholderParameterMatch
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPlaceholderParameterMatch guid: (GUID fromString: '{ad70aceb-9228-4d86-866b-0e1ba7f083cd}')!
WAPlaceholderParameterMatch comment: ''!
!WAPlaceholderParameterMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAPlaceholderParameterMatch methodsFor!

argumentCount

index

initializeWithName: aString index: anInteger

mapArgumentsWithParameters: aDictionary into: anArray

matchesName: aNameString value: aValueString
!WAPlaceholderParameterMatch categoriesFor: #argumentCount!accessing!public! !
!WAPlaceholderParameterMatch categoriesFor: #index!accessing!public! !
!WAPlaceholderParameterMatch categoriesFor: #initializeWithName:index:!initialization!public! !
!WAPlaceholderParameterMatch categoriesFor: #mapArgumentsWithParameters:into:!public! !
!WAPlaceholderParameterMatch categoriesFor: #matchesName:value:!public!testing! !

!WAPlaceholderParameterMatch class methodsFor!

name: aString index: anInteger

name: aNameString value: aValueString arguments: aCollectionOfStrings
!WAPlaceholderParameterMatch class categoriesFor: #name:index:!instance creation!public! !
!WAPlaceholderParameterMatch class categoriesFor: #name:value:arguments:!instance creation!public! !
