﻿"Filed out from Dolphin Smalltalk 7"!

WAUserConfiguration subclass: #WASharedConfiguration
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'instances'!
WASharedConfiguration guid: (GUID fromString: '{1b2bec06-d6a1-4645-8a53-06df5bcee0bf}')!
WASharedConfiguration comment: ''!
!WASharedConfiguration categoriesForClass!Seaside-Core-Configuration! !
!WASharedConfiguration methodsFor!

initializeWithName: aString

isShared

name

unregister
!WASharedConfiguration categoriesFor: #initializeWithName:!initialization!public! !
!WASharedConfiguration categoriesFor: #isShared!public!testing! !
!WASharedConfiguration categoriesFor: #name!accessing!public! !
!WASharedConfiguration categoriesFor: #unregister!actions!public! !

!WASharedConfiguration class methodsFor!

configurations

initialize

named: aString

new

unregister: aConfiguration
!WASharedConfiguration class categoriesFor: #configurations!accessing!public! !
!WASharedConfiguration class categoriesFor: #initialize!initialization!public! !
!WASharedConfiguration class categoriesFor: #named:!instance creation!public! !
!WASharedConfiguration class categoriesFor: #new!instance creation!public! !
!WASharedConfiguration class categoriesFor: #unregister:!instance creation!public! !
