"Filed out from Dolphin Smalltalk"!

WASessionCookieProtectionFilter subclass: #WASessionCookieProtectionRenderedFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionCookieProtectionRenderedFilter guid: (GUID fromString: '{301d17ec-c6c1-4492-8da0-bbf095e3c5ef}')!

WASessionCookieProtectionRenderedFilter comment: 'I''m pretty much the same as my superclass, but when returning a forbidden response, the response is rendered using a WAHtmlCanvas.'!

!WASessionCookieProtectionRenderedFilter categoriesForClass!Seaside-Examples-Sessions! !

!WASessionCookieProtectionRenderedFilter methodsFor!

renderCookiesRequiredStatementOn: html	html text: self cookiesRequiredStatement!

respondCookiesRequired: aRequestContext	| dialog |	dialog := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | 			root				beHtml5;				title: 'Cookies Required' ];		render: [ :html | self renderCookiesRequiredStatementOn: html ].	aRequestContext		respond: [ :response | 			response				forbidden;				contentType: WAMimeType textHtml;				nextPutAll: dialog ]! !

!WASessionCookieProtectionRenderedFilter categoriesForMethods!
renderCookiesRequiredStatementOn:!processing!public! !
respondCookiesRequired:!processing!public! !
!

