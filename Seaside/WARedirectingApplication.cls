"Filed out from Dolphin Smalltalk"!

WAApplication subclass: #WARedirectingApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARedirectingApplication guid: (GUID fromString: '{a3dc7e93-8e96-403c-8583-8eb45b2a62c5}')!

WARedirectingApplication comment: 'I revert to the old < 3.3.0 behavior which is easier for tests.'!

!WARedirectingApplication categoriesForClass!Seaside-Tests-Session! !

!WARedirectingApplication methodsFor!

handleExpired: aRequestContext		aRequestContext responseGenerator		expiredRegistryKey;		respond! !

!WARedirectingApplication categoriesForMethods!
handleExpired:!handling!public! !
!

