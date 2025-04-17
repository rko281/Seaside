"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAHandlerTrackingStrategyTest
	instanceVariableNames: 'strategy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHandlerTrackingStrategyTest guid: (GUID fromString: '{26cbd9bd-d43d-48da-ad14-3078c7518735}')!

WAHandlerTrackingStrategyTest comment: ''!

!WAHandlerTrackingStrategyTest categoriesForClass!RequestHandling! !

!WAHandlerTrackingStrategyTest methodsFor!

assertCookieInContext: aRequestContext withValue: aString	| cookies cookie |	cookies := aRequestContext response cookies.	self assert: cookies size = 1.	cookie := cookies first.	self assert: cookie key = strategy keyCookieName.	self assert: cookie value = aString!

assertNoCookies: aRequestContext	self assert: aRequestContext response cookies isEmpty!

createRequest	^ WARequest method: 'GET' uri: '/catspajamassc2'!

newDocumentHandler	^ WADocumentHandler document: 'WADocumentHandler document: document'!

newStrategy	self subclassResponsibility!

setUp	super setUp.	strategy := self newStrategy! !

!WAHandlerTrackingStrategyTest categoriesForMethods!
assertCookieInContext:withValue:!private! !
assertNoCookies:!private! !
createRequest!configuration!public! !
newDocumentHandler!private! !
newStrategy!private! !
setUp!public!running! !
!

!WAHandlerTrackingStrategyTest class methodsFor!

isAbstract	^ self name = #WAHandlerTrackingStrategyTest! !

!WAHandlerTrackingStrategyTest class categoriesForMethods!
isAbstract!public!testing! !
!

