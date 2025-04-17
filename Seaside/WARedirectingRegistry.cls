"Filed out from Dolphin Smalltalk"!

WARegistry subclass: #WARedirectingRegistry
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARedirectingRegistry guid: (GUID fromString: '{fd2655a0-a591-4b61-b43f-3dda96d96ffd}')!

WARedirectingRegistry comment: 'I revert to the old < 3.3.0 behavior which is easier for tests.'!

!WARedirectingRegistry categoriesForClass!RequestHandling! !

!WARedirectingRegistry methodsFor!

handleExpired: aRequestContext		aRequestContext responseGenerator		expiredRegistryKey;		respond! !

!WARedirectingRegistry categoriesForMethods!
handleExpired:!handling!public! !
!

