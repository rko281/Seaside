"Filed out from Dolphin Smalltalk 7"!

WACookieSessionTrackingStrategyTest subclass: #WACookieOnlySessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACookieOnlySessionTrackingStrategyTest guid: (GUID fromString: '{5b6d668d-6dcf-4ce9-adb6-c952a365e8f2}')!
WACookieOnlySessionTrackingStrategyTest comment: ''!
!WACookieOnlySessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !
!WACookieOnlySessionTrackingStrategyTest methodsFor!

newStrategy	^ WACookieOnlySessionTrackingStrategy new!

testAddKeyOfSessionToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2'! !
!WACookieOnlySessionTrackingStrategyTest categoriesFor: #newStrategy!private! !
!WACookieOnlySessionTrackingStrategyTest categoriesFor: #testAddKeyOfSessionToUrl!public!tests! !

