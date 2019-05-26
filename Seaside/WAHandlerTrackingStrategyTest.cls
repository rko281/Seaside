"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WAHandlerTrackingStrategyTest
	instanceVariableNames: 'strategy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHandlerTrackingStrategyTest guid: (GUID fromString: '{d2b9d12e-ab6c-4222-94fc-de5d319c3e5f}')!
WAHandlerTrackingStrategyTest comment: ''!
!WAHandlerTrackingStrategyTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WAHandlerTrackingStrategyTest methodsFor!

assertCookieInContext: aRequestContext withValue: aString	| cookies cookie |	cookies := aRequestContext response cookies.	self assert: cookies size = 1.	cookie := cookies first.	self assert: cookie key = strategy keyCookieName.	self assert: cookie value = aString!

assertNoCookies: aRequestContext	self assert: aRequestContext response cookies isEmpty!

createRequest	^ WARequest method: 'GET' uri: '/catspajamassc2'!

newDocumentHandler	^ WADocumentHandler document: 'WADocumentHandler document: document'!

newStrategy	self subclassResponsibility!

setUp	super setUp.	strategy := self newStrategy! !
!WAHandlerTrackingStrategyTest categoriesFor: #assertCookieInContext:withValue:!private! !
!WAHandlerTrackingStrategyTest categoriesFor: #assertNoCookies:!private! !
!WAHandlerTrackingStrategyTest categoriesFor: #createRequest!configuration!public! !
!WAHandlerTrackingStrategyTest categoriesFor: #newDocumentHandler!private! !
!WAHandlerTrackingStrategyTest categoriesFor: #newStrategy!private! !
!WAHandlerTrackingStrategyTest categoriesFor: #setUp!public!running! !

!WAHandlerTrackingStrategyTest class methodsFor!

isAbstract	^ self name = #WAHandlerTrackingStrategyTest! !
!WAHandlerTrackingStrategyTest class categoriesFor: #isAbstract!public!testing! !

