"Filed out from Dolphin Smalltalk"!

WARegistry subclass: #WARedirectingRegistry
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARedirectingRegistry guid: (GUID fromString: '{497b1ddc-ed40-4099-95db-2d08c52a9311}')!

WARedirectingRegistry comment: 'I revert to the old < 3.3.0 behavior which is easier for tests.'!

!WARedirectingRegistry categoriesForClass!Seaside-Tests-Core-RequestHandling! !

!WARedirectingRegistry methodsFor!

handleExpired: aRequestContext		aRequestContext responseGenerator		expiredRegistryKey;		respond! !

!WARedirectingRegistry categoriesForMethods!
handleExpired:!handling!public! !
!

