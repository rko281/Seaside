"Filed out from Dolphin Smalltalk 7"!

WACookieSessionTrackingStrategyTest subclass: #WAEnterpriseAuberginesStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEnterpriseAuberginesStrategyTest guid: (GUID fromString: '{885437c2-cd7c-47f6-a32b-d65a4db79c6a}')!
WAEnterpriseAuberginesStrategyTest comment: ''!
!WAEnterpriseAuberginesStrategyTest categoriesForClass!Seaside-Tests-Session! !
!WAEnterpriseAuberginesStrategyTest methodsFor!

newStrategy	^ WAEnterpriseAuberginesStrategy new!

testAddKeyOfSessionToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2;jsessionid=The_Metaphor'!

testAddKeyOfSessionToUrlCookieAlreadyPresent	| context uri cookie1 |	context := self requestContext.	cookie1 := WARequestCookie key: strategy keyCookieName value: 'The_Metaphor'.	context request setCookies: (Array with: cookie1).	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2'!

testQueryFieldOverridesCookie	| cookie1 key context |	cookie1 := WARequestCookie key: strategy keyCookieName value: 'cookie1'.	context := self requestContext.	context request setCookies: (Array with: cookie1).	context request uri addPathParameterAt: context request uri path size key: strategy keyField value: 'value1'. 		key := strategy keyFromContext: context.	self assert: key = 'value1'! !
!WAEnterpriseAuberginesStrategyTest categoriesFor: #newStrategy!private! !
!WAEnterpriseAuberginesStrategyTest categoriesFor: #testAddKeyOfSessionToUrl!public!tests! !
!WAEnterpriseAuberginesStrategyTest categoriesFor: #testAddKeyOfSessionToUrlCookieAlreadyPresent!public!tests! !
!WAEnterpriseAuberginesStrategyTest categoriesFor: #testQueryFieldOverridesCookie!public!tests! !

