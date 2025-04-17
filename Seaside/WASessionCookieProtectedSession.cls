"Filed out from Dolphin Smalltalk"!

WASession subclass: #WASessionCookieProtectedSession
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionCookieProtectedSession guid: (GUID fromString: '{dd85fff6-3094-420d-9897-a3deefa3103b}')!

WASessionCookieProtectedSession comment: 'I am a session with a WASessionCookieProtectionFilter.'!

!WASessionCookieProtectedSession categoriesForClass!Sessions! !

!WASessionCookieProtectedSession methodsFor!

initializeFilters	super initializeFilters.	self addFilter: WASessionCookieProtectionFilter new! !

!WASessionCookieProtectedSession categoriesForMethods!
initializeFilters!initialization!public! !
!

