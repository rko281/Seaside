﻿"Filed out from Dolphin Smalltalk 7"!

WARestfulFilter subclass: #WARestfulComponentFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARestfulComponentFilter guid: (GUID fromString: '{ddfb3d64-aef3-42b7-811d-9bbb531db067}')!
WARestfulComponentFilter comment: 'I allow mixing stateless and stateful Seaside application. I am intended for cases where there are a couple of stateless "browse" pages before sateful application pages that require a session. If a request comes in and has a session it gets dispatched to the application, otherwise it''s treated as a normal REST request.
!WARestfulComponentFilter categoriesForClass!Seaside-REST-Core-Handler! !
!WARestfulComponentFilter methodsFor!

handleFiltered: aRequestContext

hasSession: aRequestContext

startSessionWithRoot: aComponent
!WARestfulComponentFilter categoriesFor: #handleFiltered:!processing!public! !
!WARestfulComponentFilter categoriesFor: #hasSession:!private! !
!WARestfulComponentFilter categoriesFor: #startSessionWithRoot:!public! !
