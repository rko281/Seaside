"Filed out from Dolphin Smalltalk 7"!

WAInvisibleSessionTrackingStrategyTest subclass: #WAIPSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAIPSessionTrackingStrategyTest guid: (GUID fromString: '{8e8e59ab-efae-4828-a7ea-4b71e8262853}')!
WAIPSessionTrackingStrategyTest comment: ''!
!WAIPSessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !
!WAIPSessionTrackingStrategyTest methodsFor!

createRequest	^ super createRequest		setRemoteAddress: self remoteAddress;		yourself!

newStrategy	^ WAIPSessionTrackingStrategy new!

remoteAddress	^ '17.154.81.95'!

sessionId	^ self remoteAddress! !
!WAIPSessionTrackingStrategyTest categoriesFor: #createRequest!private! !
!WAIPSessionTrackingStrategyTest categoriesFor: #newStrategy!private! !
!WAIPSessionTrackingStrategyTest categoriesFor: #remoteAddress!private! !
!WAIPSessionTrackingStrategyTest categoriesFor: #sessionId!private! !

