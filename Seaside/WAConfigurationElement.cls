"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAConfigurationElement
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigurationElement guid: (GUID fromString: '{99b47137-59fd-4997-9ec7-e709e0a9bca9}')!

WAConfigurationElement comment: ''!

!WAConfigurationElement categoriesForClass!Configuration! !

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

