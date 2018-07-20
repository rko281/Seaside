"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAConfigurationElement
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigurationElement guid: (GUID fromString: '{56fb554f-84b1-4110-8b0a-80904f28a65a}')!
WAConfigurationElement comment: ''!
!WAConfigurationElement categoriesForClass!Seaside-Core-Configuration! !
!WAConfigurationElement methodsFor!

initializeWithKey: aSymbol	self initialize.	key := aSymbol!

key	^ key! !
!WAConfigurationElement categoriesFor: #initializeWithKey:!initialization!public! !
!WAConfigurationElement categoriesFor: #key!accessing!public! !

!WAConfigurationElement class methodsFor!

key: aSymbol	^ self basicNew initializeWithKey: aSymbol; yourself! !
!WAConfigurationElement class categoriesFor: #key:!instance creation!public! !

