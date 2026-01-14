"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAConfigurationElement
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigurationElement guid: (GUID fromString: '{6c6942cf-cc0e-4997-8664-66ba1fbfd800}')!

WAConfigurationElement comment: ''!

!WAConfigurationElement categoriesForClass!Seaside-Core-Configuration! !

!WAConfigurationElement methodsFor!

initializeWithKey: aSymbol	self initialize.	key := aSymbol!

key	^ key! !

!WAConfigurationElement categoriesForMethods!
initializeWithKey:!initialization!public! !
key!accessing!public! !
!

!WAConfigurationElement class methodsFor!

key: aSymbol	^ self basicNew initializeWithKey: aSymbol; yourself! !

!WAConfigurationElement class categoriesForMethods!
key:!instance creation!public! !
!

