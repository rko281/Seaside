"Filed out from Dolphin Smalltalk 7"!

WARegistry subclass: #WARedirectingRegistry
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARedirectingRegistry guid: (GUID fromString: '{6385436d-6e6e-475e-859d-b8fa300d97c5}')!
WARedirectingRegistry comment: 'I revert to the old < 3.3.0 behavior which is easier for tests.'!
!WARedirectingRegistry categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WARedirectingRegistry methodsFor!

handleExpired: aRequestContext		aRequestContext responseGenerator		expiredRegistryKey;		respond! !
!WARedirectingRegistry categoriesFor: #handleExpired:!handling!public! !

