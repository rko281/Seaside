﻿"Filed out from Dolphin Smalltalk"!

WAAbstractProtectionFilter subclass: #WARemoteAddressProtectionFilter
	instanceVariableNames: 'remoteAddress'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARemoteAddressProtectionFilter guid: (GUID fromString: '{20c85f23-4e22-43d5-83de-e8d30ac6caa1}')!

WARemoteAddressProtectionFilter comment: 'The remote address protection filter ensures that the wrapped request handler only accepts requests from the same IP. Do add this filter to a WASession for example to avoid session hijacking, do not add it to static request handlers such as WAApplication or WADispatcher as this might restrict access to the handler if your IP changes.Note that checking for IP addresses is not bullet proof and should never be used as the sole security measure for a web application as IP addresses can be easily spoofed.'!

!WARemoteAddressProtectionFilter categoriesForClass!Filter! !

!WARemoteAddressProtectionFilter methodsFor!

handleFiltered: aRequestContext 	(self verifyRequest: aRequestContext request) 		ifTrue: [ super handleFiltered: aRequestContext ]		ifFalse: [ 			aRequestContext responseGenerator				forbidden;				respond ]!

remoteAddress	^ remoteAddress!

remoteAddressFromRequest: aRequest	| result |	result := aRequest forwardedFor ifNil:[ aRequest remoteAddress ].	remoteAddress ifNil:[ remoteAddress := result ].	^ result!

verifyRequest: aRequest	^ (self remoteAddressFromRequest: aRequest) = self remoteAddress! !

!WARemoteAddressProtectionFilter categoriesForMethods!
handleFiltered:!processing!public! !
remoteAddress!private! !
remoteAddressFromRequest:!private! !
verifyRequest:!public!testing! !
!

