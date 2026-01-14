"Filed out from Dolphin Smalltalk"!

WAMatch subclass: #WAParameterMatch
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAParameterMatch guid: (GUID fromString: '{7eb79f09-c520-4a06-952f-9623f6630120}')!

WAParameterMatch comment: ''!

!WAParameterMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAParameterMatch methodsFor!

argumentCount	self subclassResponsibility!

initializeWithName: aString	self initialize.	name := aString!

mapArgumentsWithParameters: aDictionary into: anArray	self subclassResponsibility!

matchesName: aNameString value: aValueString	self subclassResponsibility! !

!WAParameterMatch categoriesForMethods!
argumentCount!accessing!public! !
initializeWithName:!initialization!public! !
mapArgumentsWithParameters:into:!public! !
matchesName:value:!public!testing! !
!

!WAParameterMatch class methodsFor!

isPattern: aString	^ aString isEmpty not		and: [ aString first = ${		and: [ aString last = $} ] ]!

name: aKeyString value: aValueString arguments: aCollectionOfStrings 	^ ((self isPattern: aValueString)		ifTrue: [ WAPlaceholderParameterMatch ]		ifFalse: [ WAExactParameterMatch ]) name: aKeyString value: aValueString arguments: aCollectionOfStrings! !

!WAParameterMatch class categoriesForMethods!
isPattern:!private! !
name:value:arguments:!instance creation!public! !
!

