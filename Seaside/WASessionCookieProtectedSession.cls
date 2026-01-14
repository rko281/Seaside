"Filed out from Dolphin Smalltalk"!

WASession subclass: #WASessionCookieProtectedSession
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionCookieProtectedSession guid: (GUID fromString: '{cca8b81e-f400-4178-936e-6e8f253becae}')!

WASessionCookieProtectedSession comment: 'I am a session with a WASessionCookieProtectionFilter.'!

!WASessionCookieProtectedSession categoriesForClass!Seaside-Examples-Sessions! !

!WASessionCookieProtectedSession methodsFor!

initializeFilters	super initializeFilters.	self addFilter: WASessionCookieProtectionFilter new! !

!WASessionCookieProtectedSession categoriesForMethods!
initializeFilters!initialization!public! !
!

