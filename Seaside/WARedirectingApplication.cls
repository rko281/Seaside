"Filed out from Dolphin Smalltalk"!

WAApplication subclass: #WARedirectingApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARedirectingApplication guid: (GUID fromString: '{0f737824-3736-4e14-9a0c-890d5ae62b2a}')!

WARedirectingApplication comment: 'I revert to the old < 3.3.0 behavior which is easier for tests.'!

!WARedirectingApplication categoriesForClass!Unclassified! !

!WARedirectingApplication methodsFor!

handleExpired: aRequestContext		aRequestContext responseGenerator		expiredRegistryKey;		respond! !

!WARedirectingApplication categoriesForMethods!
handleExpired:!handling!public! !
!

