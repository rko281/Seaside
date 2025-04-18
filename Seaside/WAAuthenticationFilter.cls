﻿"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WAAuthenticationFilter
	instanceVariableNames: 'authenticator realm'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAuthenticationFilter guid: (GUID fromString: '{dad24733-6d42-468b-b6c9-0d9bc35b890d}')!

WAAuthenticationFilter comment: 'WAAuthenticationFilter protects a request handler with username and password using the standard HTTP basic authentication. This passes username and password in clear-text, unless used over an encripted HTTPS connection. You should set the authenticator, and object that is able to validate usernames and passwords by implementing #verifyPassword:forUser:.'!

!WAAuthenticationFilter categoriesForClass!Filter! !

!WAAuthenticationFilter methodsFor!

authenticator	"Answer the object used for authentication. Defaults to the owning handler."	^ authenticator ifNil: [ self handler ]!

authenticator: anObject	authenticator := anObject!

handleFiltered: aRequestContext 	(self verifyRequest: aRequestContext request) 		ifTrue: [ super handleFiltered: aRequestContext ]		ifFalse: [			aRequestContext responseGenerator				authenticate: self realm;				respond ]!

realm	"Answer the realm to be displayed in the authentication dialog."		^ realm ifNil: [ realm := 'Seaside' ]!

realm: anObject	realm := anObject!

verifyRequest: aRequest	^ self authenticator verifyPassword: aRequest password forUser: aRequest user! !

!WAAuthenticationFilter categoriesForMethods!
authenticator!accessing!public! !
authenticator:!accessing!public! !
handleFiltered:!processing!public! !
realm!accessing!public! !
realm:!accessing!public! !
verifyRequest:!public!testing! !
!

