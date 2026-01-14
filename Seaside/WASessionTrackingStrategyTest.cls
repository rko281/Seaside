"Filed out from Dolphin Smalltalk"!

WAHandlerTrackingStrategyTest subclass: #WASessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionTrackingStrategyTest guid: (GUID fromString: '{5acd3f2e-c271-4d73-b90d-c3d29d6a7ddd}')!

WASessionTrackingStrategyTest comment: ''!

!WASessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !

!WASessionTrackingStrategyTest methodsFor!

assertNotFound: aRequestContext	self assert: aRequestContext response status = WAResponse statusFound.	self assert: (aRequestContext response headerAt: 'Location') greaseString = '/catspajamassc2'!

assertOk: aRequestContext	self assert: aRequestContext response status = WAResponse statusOk!

createHandlers	^ Array with: self newApplication!

newApplication	^ WARedirectingApplication new		cache: WAUnidirectionalCache new;		yourself!

newSession	^ WASession new! !

!WASessionTrackingStrategyTest categoriesForMethods!
assertNotFound:!private! !
assertOk:!private! !
createHandlers!configuration!public! !
newApplication!private! !
newSession!private! !
!

!WASessionTrackingStrategyTest class methodsFor!

isAbstract	^ self name = #WASessionTrackingStrategyTest! !

!WASessionTrackingStrategyTest class categoriesForMethods!
isAbstract!public!testing! !
!

