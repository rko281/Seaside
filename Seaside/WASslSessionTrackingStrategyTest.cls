"Filed out from Dolphin Smalltalk 7"!

WAInvisibleSessionTrackingStrategyTest subclass: #WASslSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASslSessionTrackingStrategyTest guid: (GUID fromString: '{3baa8b6a-ff65-4909-9a40-c36900b9b01b}')!
WASslSessionTrackingStrategyTest comment: ''!
!WASslSessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !
!WASslSessionTrackingStrategyTest methodsFor!

createRequest	^ super createRequest		setSslSessionId: self sslSessionId;		yourself!

newStrategy	^ WASslSessionTrackingStrategy new!

sessionId	^ self sslSessionId!

sslSessionId	^ 'F42BAA17C89C707060E6BF5D251CC7E8832117056C1A8B0883387CA0EDDB52CF'! !
!WASslSessionTrackingStrategyTest categoriesFor: #createRequest!private! !
!WASslSessionTrackingStrategyTest categoriesFor: #newStrategy!private! !
!WASslSessionTrackingStrategyTest categoriesFor: #sessionId!private! !
!WASslSessionTrackingStrategyTest categoriesFor: #sslSessionId!private! !

