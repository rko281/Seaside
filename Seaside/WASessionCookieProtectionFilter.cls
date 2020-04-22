﻿"Filed out from Dolphin Smalltalk 7"!

WAAbstractProtectionFilter subclass: #WASessionCookieProtectionFilter
	instanceVariableNames: 'browserSessionID'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASessionCookieProtectionFilter guid: (GUID fromString: '{534a4c96-b28a-401a-88ce-9a5ba1c88ecc}')!
WASessionCookieProtectionFilter comment: 'The session cookie protection filter ensures that the wrapped request handler only accepts requests from the same browser session. This filter is specifically useful to protect session hijacking when using the (default) query field session tracking strategy.
!WASessionCookieProtectionFilter categoriesForClass!Seaside-Core-Filter! !
!WASessionCookieProtectionFilter methodsFor!

browserSessionID

browserSessionIDCookieKey

browserSessionIDSize

cookieCheckUrlFor: aRequestContext

createBrowserSessionIDCookieFor: aRequestContext

handleFiltered: aRequestContext

hasBrowserSessionID

newBrowserSessionID

renderCookiesRequiredStatementOn: html

setBrowserSessionIDFor: aRequestContext

verifyBrowserSessionIDFor: requestContext
!WASessionCookieProtectionFilter categoriesFor: #browserSessionID!accessing!public! !
!WASessionCookieProtectionFilter categoriesFor: #browserSessionIDCookieKey!constants!public! !
!WASessionCookieProtectionFilter categoriesFor: #browserSessionIDSize!constants!public! !
!WASessionCookieProtectionFilter categoriesFor: #cookieCheckUrlFor:!private! !
!WASessionCookieProtectionFilter categoriesFor: #createBrowserSessionIDCookieFor:!private! !
!WASessionCookieProtectionFilter categoriesFor: #handleFiltered:!processing!public! !
!WASessionCookieProtectionFilter categoriesFor: #hasBrowserSessionID!private! !
!WASessionCookieProtectionFilter categoriesFor: #newBrowserSessionID!private! !
!WASessionCookieProtectionFilter categoriesFor: #renderCookiesRequiredStatementOn:!processing!public! !
!WASessionCookieProtectionFilter categoriesFor: #setBrowserSessionIDFor:!private! !
!WASessionCookieProtectionFilter categoriesFor: #verifyBrowserSessionIDFor:!private! !
