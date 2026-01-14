"Filed out from Dolphin Smalltalk"!

WASessionTrackingStrategy subclass: #WACookieForBrowserIPForCrawlerTrackingStrategy
	instanceVariableNames: 'cookieStrategy ipStrategy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACookieForBrowserIPForCrawlerTrackingStrategy guid: (GUID fromString: '{5f7045a3-cc65-4bed-8aff-ff5b9550a31c}')!

WACookieForBrowserIPForCrawlerTrackingStrategy comment: 'WACookieForBrowserIPForCrawlerTrackingStrategy uses cookie based session tracking for browsers and IPs for crawlers (they don''t support cookies). This way there is never a session key in any URL.This is inspired by:http://www.tomcatexpert.com/blog/2011/05/18/crawler-session-manager-valve'!

!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesForClass!Seaside-Session-Tracking! !

!WACookieForBrowserIPForCrawlerTrackingStrategy methodsFor!

addKey: aString toContext: aRequestContext	^ (self strategyFor: aRequestContext)		addKey: aString toContext: aRequestContext!

addKey: aString toUrl: aUrl	^ (self strategyFor: self requestContext)		addKey: aString toUrl: aUrl!

crawlerSubStrings	^ #(		'bot'		'Bot'		'Yahoo!! Slurp'		'Feedfetcher-Google'	)!

initialize	super initialize.	ipStrategy := WAIPSessionTrackingStrategy new.	cookieStrategy := WACookieOnlySessionTrackingStrategy new!

isFromCrawler: aRequestContext	| userAgent |	userAgent := aRequestContext request userAgent.	^ userAgent notNil and: [ self crawlerSubStrings anySatisfy: [ :each |			(userAgent indexOfSubCollection: each) > 0 ] ]!

keyFromContext: aRequestContext	^ (self strategyFor: aRequestContext)		keyFromContext: aRequestContext!

noHandlerFoundForKey: aString in: anApplication context: aRequestContext	^ (self strategyFor: aRequestContext)		noHandlerFoundForKey: aString in: anApplication context: aRequestContext!

strategyFor: aRequestContext	^ (self isFromCrawler: aRequestContext)		ifTrue: [ ipStrategy ]		ifFalse: [ cookieStrategy ]! !

!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesForMethods!
addKey:toContext:!public! !
addKey:toUrl:!public! !
crawlerSubStrings!private! !
initialize!initialization!public! !
isFromCrawler:!private! !
keyFromContext:!public! !
noHandlerFoundForKey:in:context:!public! !
strategyFor:!private! !
!

