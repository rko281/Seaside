"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WAInteractionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInteractionTest guid: (GUID fromString: '{bb839e71-80d0-47b2-a83b-43d851c62e1f}')!
WAInteractionTest comment: 'The purpose of WAInteractionTest is to provide a fully initialized WARequestContext all the necessary objects are are normally there in a Seaside application like request, response, dispatcher application, session and so forth.'!
!WAInteractionTest categoriesForClass!Seaside-Tests-Session! !
!WAInteractionTest methodsFor!

application	^ self requestContext application!

createHandlers	| dispatcher application session root |	root := WADispatcher new.	dispatcher := root register: WADispatcher new at: 'rails'.	application := dispatcher register: WAApplication new at: 'homepage'.	session := WASession new.	application register: session.	^ super createHandlers, (Array with: root with: dispatcher with: application with: session)!

session	^ self requestContext session!

testDeleteNetscapeCookie	| requestCookie responseCookies responseCookie |	self application preferenceAt: #serverPath put: '/en/private_kunden/wealth_management'.	requestCookie := WARequestCookie key: 'password' value: 'sex'.	self requestContextWithUrl: '/' cookies: (Array with: requestCookie).	self requestContext response deleteCookie: requestCookie.		responseCookies := self requestContext response cookies.	self assert: responseCookies size = 1.	responseCookie := responseCookies any.		self assert: (responseCookie isKindOf: WACookie).	self assert: responseCookie value = ''.	self assert: responseCookie path = self application url pathStringUnencoded!

testDeleteRfc2965Cookie	| requestCookie responseCookies responseCookie |	requestCookie := (WARequestCookie key: 'password' value: 'sex')		path: '/en/private_kunden/wealth_management';		version: 1;		yourself.	self requestContextWithUrl: '/' cookies: (Array with: requestCookie).	self requestContext response deleteCookie: requestCookie.		responseCookies := self requestContext response cookies.	self assert: responseCookies size = 1.	responseCookie := responseCookies any.		self assert: (responseCookie isKindOf: WACookie).	self assert: responseCookie value = ''.	self assert: responseCookie path = '/en/private_kunden/wealth_management'!

testNewCookie	| cookie |	cookie := self requestContext newCookie.	self assert: cookie path = self application url pathStringUnencoded.	self assert: cookie ports isNil.	self assert: cookie httpOnly.	self deny: cookie secure.	self assert: cookie domain isNil.		self application preferenceAt: #serverPath put: '/en/private_kunden/wealth_management'.	cookie := self requestContext newCookie.	self assert: cookie path = '/en/private_kunden/wealth_management'.	self assert: cookie ports isNil.	self assert: cookie httpOnly.	self deny: cookie secure.	self assert: cookie domain isNil.		self application preferenceAt: #serverPort put: 8080.	self application preferenceAt: #serverProtocol put: 'https'.	self application preferenceAt: #serverHostname put: 'www.lgt.com'.	cookie := self requestContext newCookie.	self assert: cookie path = '/en/private_kunden/wealth_management'.	self deny: cookie ports isNil.	self assert: cookie ports size = 1.	self assert: cookie ports first = 8080.	self assert: cookie httpOnly.	self assert: cookie secure.	self assert: cookie domain = 'www.lgt.com'! !
!WAInteractionTest categoriesFor: #application!accessing!public! !
!WAInteractionTest categoriesFor: #createHandlers!configuration!public! !
!WAInteractionTest categoriesFor: #session!accessing!public! !
!WAInteractionTest categoriesFor: #testDeleteNetscapeCookie!public!tests! !
!WAInteractionTest categoriesFor: #testDeleteRfc2965Cookie!public!tests! !
!WAInteractionTest categoriesFor: #testNewCookie!public!tests! !

