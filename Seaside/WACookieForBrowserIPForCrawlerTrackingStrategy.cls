"Filed out from Dolphin Smalltalk 7"!

WASessionTrackingStrategy subclass: #WACookieForBrowserIPForCrawlerTrackingStrategy
	instanceVariableNames: 'cookieStrategy ipStrategy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACookieForBrowserIPForCrawlerTrackingStrategy guid: (GUID fromString: '{90112d1e-f203-44f6-ab6f-95b92a932554}')!
WACookieForBrowserIPForCrawlerTrackingStrategy comment: 'WACookieForBrowserIPForCrawlerTrackingStrategy uses cookie based session tracking for browsers and IPs for crawlers (they don''t support cookies). This way there is never a session key in any URL.This is inspired by:http://www.tomcatexpert.com/blog/2011/05/18/crawler-session-manager-valve'!
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesForClass!Seaside-Session! !
!WACookieForBrowserIPForCrawlerTrackingStrategy methodsFor!

addKey: aString toContext: aRequestContext	^ (self strategyFor: aRequestContext)		addKey: aString toContext: aRequestContext!

addKey: aString toUrl: aUrl	^ (self strategyFor: WACurrentRequestContext value)		addKey: aString toUrl: aUrl!

crawlerSubStrings	^ #(		'bot'		'Bot'		'Yahoo!! Slurp'		'Feedfetcher-Google'	)!

initialize	super initialize.	ipStrategy := WAIPSessionTrackingStrategy new.	cookieStrategy := WACookieOnlySessionTrackingStrategy new!

isFromCrawler: aRequestContext	| userAgent |	userAgent := aRequestContext request userAgent.	^ userAgent notNil and: [ self crawlerSubStrings anySatisfy: [ :each |			(userAgent indexOfSubCollection: each) > 0 ] ]!

keyFromContext: aRequestContext	^ (self strategyFor: aRequestContext)		keyFromContext: aRequestContext!

noHandlerFoundForKey: aString in: anApplication context: aRequestContext	^ (self strategyFor: aRequestContext)		noHandlerFoundForKey: aString in: anApplication context: aRequestContext!

strategyFor: aRequestContext	^ (self isFromCrawler: aRequestContext)		ifTrue: [ ipStrategy ]		ifFalse: [ cookieStrategy ]! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #addKey:toContext:!public! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #addKey:toUrl:!public! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #crawlerSubStrings!private! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #initialize!initialization!public! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #isFromCrawler:!private! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #keyFromContext:!public! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #noHandlerFoundForKey:in:context:!public! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #strategyFor:!private! !

