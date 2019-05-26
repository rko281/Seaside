"Filed out from Dolphin Smalltalk 7"!

WAMatch subclass: #WAParameterMatch
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAParameterMatch guid: (GUID fromString: '{9f2e8534-85fa-48df-92ff-dd799df0b4b6}')!
WAParameterMatch comment: ''!
!WAParameterMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAParameterMatch methodsFor!

argumentCount	self subclassResponsibility!

initializeWithName: aString	self initialize.	name := aString!

mapArgumentsWithParameters: aDictionary into: anArray	self subclassResponsibility!

matchesName: aNameString value: aValueString	self subclassResponsibility! !
!WAParameterMatch categoriesFor: #argumentCount!accessing!public! !
!WAParameterMatch categoriesFor: #initializeWithName:!initialization!public! !
!WAParameterMatch categoriesFor: #mapArgumentsWithParameters:into:!public! !
!WAParameterMatch categoriesFor: #matchesName:value:!public!testing! !

!WAParameterMatch class methodsFor!

isPattern: aString	^ aString isEmpty not		and: [ aString first = ${		and: [ aString last = $} ] ]!

name: aKeyString value: aValueString arguments: aCollectionOfStrings 	^ ((self isPattern: aValueString)		ifTrue: [ WAPlaceholderParameterMatch ]		ifFalse: [ WAExactParameterMatch ]) name: aKeyString value: aValueString arguments: aCollectionOfStrings ! !
!WAParameterMatch class categoriesFor: #isPattern:!private! !
!WAParameterMatch class categoriesFor: #name:value:arguments:!instance creation!public! !

