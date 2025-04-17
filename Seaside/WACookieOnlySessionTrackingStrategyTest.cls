"Filed out from Dolphin Smalltalk"!

WACookieSessionTrackingStrategyTest subclass: #WACookieOnlySessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACookieOnlySessionTrackingStrategyTest guid: (GUID fromString: '{e756a647-59c6-4a6b-a08e-6f82f28c9a90}')!

WACookieOnlySessionTrackingStrategyTest comment: ''!

!WACookieOnlySessionTrackingStrategyTest categoriesForClass!Unclassified! !

!WACookieOnlySessionTrackingStrategyTest methodsFor!

newStrategy	^ WACookieOnlySessionTrackingStrategy new!

testAddKeyOfSessionToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2'! !

!WACookieOnlySessionTrackingStrategyTest categoriesForMethods!
newStrategy!private! !
testAddKeyOfSessionToUrl!public!tests! !
!

