"Filed out from Dolphin Smalltalk"!

WACookieSessionTrackingStrategyTest subclass: #WACookieOnlySessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACookieOnlySessionTrackingStrategyTest guid: (GUID fromString: '{e0a093b1-af62-4cb7-bde7-a020cb8bffdf}')!

WACookieOnlySessionTrackingStrategyTest comment: ''!

!WACookieOnlySessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !

!WACookieOnlySessionTrackingStrategyTest methodsFor!

newStrategy	^ WACookieOnlySessionTrackingStrategy new!

testAddKeyOfSessionToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2'! !

!WACookieOnlySessionTrackingStrategyTest categoriesForMethods!
newStrategy!private! !
testAddKeyOfSessionToUrl!public!tests! !
!

