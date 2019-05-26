"Filed out from Dolphin Smalltalk 7"!

WAApplication subclass: #WARedirectingApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARedirectingApplication guid: (GUID fromString: '{aa60b5cd-736b-4853-a8b4-d377f97aaeb5}')!
WARedirectingApplication comment: 'I revert to the old < 3.3.0 behavior which is easier for tests.'!
!WARedirectingApplication categoriesForClass!Seaside-Tests-Session! !
!WARedirectingApplication methodsFor!

handleExpired: aRequestContext		aRequestContext responseGenerator		expiredRegistryKey;		respond! !
!WARedirectingApplication categoriesFor: #handleExpired:!handling!public! !

