"Filed out from Dolphin Smalltalk 7"!

WASession subclass: #WASessionCookieProtectedSession
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASessionCookieProtectedSession guid: (GUID fromString: '{c1d5df70-fa69-4e48-8f8e-1b71a23a1c63}')!
WASessionCookieProtectedSession comment: 'I am a session with a WASessionCookieProtectionFilter.'!
!WASessionCookieProtectedSession categoriesForClass!Seaside-Examples! !
!WASessionCookieProtectedSession methodsFor!

initializeFilters	super initializeFilters.	self addFilter: WASessionCookieProtectionFilter new! !
!WASessionCookieProtectedSession categoriesFor: #initializeFilters!initialization!public! !

