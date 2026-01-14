"Filed out from Dolphin Smalltalk"!

WAInvisibleSessionTrackingStrategyTest subclass: #WAIPSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAIPSessionTrackingStrategyTest guid: (GUID fromString: '{57d9956b-f44b-4715-a21d-2a014f514dc0}')!

WAIPSessionTrackingStrategyTest comment: ''!

!WAIPSessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !

!WAIPSessionTrackingStrategyTest methodsFor!

createRequest	^ super createRequest		setRemoteAddress: self remoteAddress;		yourself!

newStrategy	^ WAIPSessionTrackingStrategy new!

remoteAddress	^ '17.154.81.95'!

sessionId	^ self remoteAddress! !

!WAIPSessionTrackingStrategyTest categoriesForMethods!
createRequest!private! !
newStrategy!private! !
remoteAddress!private! !
sessionId!private! !
!

