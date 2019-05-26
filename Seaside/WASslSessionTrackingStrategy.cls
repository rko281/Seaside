"Filed out from Dolphin Smalltalk 7"!

WAInvisibleSessionTrackingStrategy subclass: #WASslSessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASslSessionTrackingStrategy guid: (GUID fromString: '{ff4b3c84-724f-42e4-84b8-1bd0505cf08d}')!
WASslSessionTrackingStrategy comment: 'I track sessions using the SSL session id. This has the advantage that the session id never shows up in the request as a parameter or cookie.Special server configuration to set the life time of an SSL session may be required.http://www.roseindia.net/javacertification/ibm-287/http_sessions.shtmlhttp://publib.boulder.ibm.com/infocenter/iseries/v5r4/index.jsp?topic=%2Frzatz%2F51%2Fprogram%2Fsesdeci.htmhttp://en.wikipedia.org/wiki/Session_fixation#Solution:_Utilize_SSL_.2F_TLS_Session_identifier'!
!WASslSessionTrackingStrategy categoriesForClass!Seaside-Session! !
!WASslSessionTrackingStrategy methodsFor!

sessionIdFromContext: aRequestContext	^ aRequestContext request sslSessionId! !
!WASslSessionTrackingStrategy categoriesFor: #sessionIdFromContext:!private! !

