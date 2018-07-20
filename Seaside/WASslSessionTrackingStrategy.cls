﻿"Filed out from Dolphin Smalltalk 7"!

WAInvisibleSessionTrackingStrategy subclass: #WASslSessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASslSessionTrackingStrategy guid: (GUID fromString: '{44cb9c1b-1493-436c-b170-c53bf700a099}')!
WASslSessionTrackingStrategy comment: 'I track sessions using the SSL session id. This has the advantage that the session id never shows up in the request as a parameter or cookie.
!WASslSessionTrackingStrategy categoriesForClass!Seaside-Session! !
!WASslSessionTrackingStrategy methodsFor!

sessionIdFromContext: aRequestContext
!WASslSessionTrackingStrategy categoriesFor: #sessionIdFromContext:!private! !
