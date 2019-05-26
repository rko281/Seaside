"Filed out from Dolphin Smalltalk 7"!

WACookieSessionTrackingStrategyTest subclass: #WACookieOnlySessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACookieOnlySessionTrackingStrategyTest guid: (GUID fromString: '{6e2b018c-f83b-42ff-ae58-81e47491a406}')!
WACookieOnlySessionTrackingStrategyTest comment: ''!
!WACookieOnlySessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !
!WACookieOnlySessionTrackingStrategyTest methodsFor!

newStrategy	^ WACookieOnlySessionTrackingStrategy new!

testAddKeyOfSessionToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2'! !
!WACookieOnlySessionTrackingStrategyTest categoriesFor: #newStrategy!private! !
!WACookieOnlySessionTrackingStrategyTest categoriesFor: #testAddKeyOfSessionToUrl!public!tests! !

