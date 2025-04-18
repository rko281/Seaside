﻿"Filed out from Dolphin Smalltalk"!

WACookieSessionTrackingStrategyTest subclass: #WAEnterpriseAuberginesStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEnterpriseAuberginesStrategyTest guid: (GUID fromString: '{c87cb30f-ed1b-4fa5-8f06-511876f05a97}')!

WAEnterpriseAuberginesStrategyTest comment: ''!

!WAEnterpriseAuberginesStrategyTest categoriesForClass!Unclassified! !

!WAEnterpriseAuberginesStrategyTest methodsFor!

newStrategy	^ WAEnterpriseAuberginesStrategy new!

testAddKeyOfSessionToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2;jsessionid=The_Metaphor'!

testAddKeyOfSessionToUrlCookieAlreadyPresent	| context uri cookie1 |	context := self requestContext.	cookie1 := WARequestCookie key: strategy keyCookieName value: 'The_Metaphor'.	context request setCookies: (Array with: cookie1).	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2'!

testQueryFieldOverridesCookie	| cookie1 key context |	cookie1 := WARequestCookie key: strategy keyCookieName value: 'cookie1'.	context := self requestContext.	context request setCookies: (Array with: cookie1).	context request uri addPathParameterAt: context request uri path size key: strategy keyField value: 'value1'. 		key := strategy keyFromContext: context.	self assert: key = 'value1'! !

!WAEnterpriseAuberginesStrategyTest categoriesForMethods!
newStrategy!private! !
testAddKeyOfSessionToUrl!public!tests! !
testAddKeyOfSessionToUrlCookieAlreadyPresent!public!tests! !
testQueryFieldOverridesCookie!public!tests! !
!

