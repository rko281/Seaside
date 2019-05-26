"Filed out from Dolphin Smalltalk 7"!

WAInvisibleSessionTrackingStrategyTest subclass: #WASslSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASslSessionTrackingStrategyTest guid: (GUID fromString: '{c2f4d8ac-4459-4885-af44-25284f4512e6}')!
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

