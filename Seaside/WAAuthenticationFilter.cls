"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WAAuthenticationFilter
	instanceVariableNames: 'authenticator realm'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAuthenticationFilter guid: (GUID fromString: '{d94602e6-0821-4ce8-847d-2c03a82a51e2}')!
WAAuthenticationFilter comment: 'WAAuthenticationFilter protects a request handler with username and password using the standard HTTP basic authentication. This passes username and password in clear-text, unless used over an encripted HTTPS connection. You should set the authenticator, and object that is able to validate usernames and passwords by implementing #verifyPassword:forUser:.'!
!WAAuthenticationFilter categoriesForClass!Seaside-Core-Filter! !
!WAAuthenticationFilter methodsFor!

authenticator	"Answer the object used for authentication. Defaults to the owning handler."	^ authenticator ifNil: [ self handler ]!

authenticator: anObject	authenticator := anObject!

handleFiltered: aRequestContext 	(self verifyRequest: aRequestContext request) 		ifTrue: [ super handleFiltered: aRequestContext ]		ifFalse: [			aRequestContext responseGenerator				authenticate: self realm;				respond ]!

realm	"Answer the realm to be displayed in the authentication dialog."		^ realm ifNil: [ realm := 'Seaside' ]!

realm: anObject	realm := anObject!

verifyRequest: aRequest	^ self authenticator verifyPassword: aRequest password forUser: aRequest user! !
!WAAuthenticationFilter categoriesFor: #authenticator!accessing!public! !
!WAAuthenticationFilter categoriesFor: #authenticator:!accessing!public! !
!WAAuthenticationFilter categoriesFor: #handleFiltered:!processing!public! !
!WAAuthenticationFilter categoriesFor: #realm!accessing!public! !
!WAAuthenticationFilter categoriesFor: #realm:!accessing!public! !
!WAAuthenticationFilter categoriesFor: #verifyRequest:!public!testing! !

