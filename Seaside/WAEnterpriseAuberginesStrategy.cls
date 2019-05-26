﻿"Filed out from Dolphin Smalltalk 7"!

WACookieIfSupportedSessionTrackingStrategy subclass: #WAEnterpriseAuberginesStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEnterpriseAuberginesStrategy guid: (GUID fromString: '{4f30167f-4878-4848-b83f-8265d95e54b4}')!
WAEnterpriseAuberginesStrategy comment: 'I implement a session tracking strategy that emulates common JavaEE application servers (Tomcat, WildFly AS). I am similar to WACookieIfSupportedSessionTrackingStrategy.
!WAEnterpriseAuberginesStrategy categoriesForClass!Seaside-Session! !
!WAEnterpriseAuberginesStrategy methodsFor!

addKey: aString toUrl: aUrl

deleteOldOrConflictingCookieIn: anApplication context: aRequestContext

keyCookieName

keyField

keyFromContext: aRequestContext

noHandlerFoundForKey: aString in: anApplication context: aRequestContext
!WAEnterpriseAuberginesStrategy categoriesFor: #addKey:toUrl:!public! !
!WAEnterpriseAuberginesStrategy categoriesFor: #deleteOldOrConflictingCookieIn:context:!private! !
!WAEnterpriseAuberginesStrategy categoriesFor: #keyCookieName!private! !
!WAEnterpriseAuberginesStrategy categoriesFor: #keyField!private! !
!WAEnterpriseAuberginesStrategy categoriesFor: #keyFromContext:!public! !
!WAEnterpriseAuberginesStrategy categoriesFor: #noHandlerFoundForKey:in:context:!public! !
