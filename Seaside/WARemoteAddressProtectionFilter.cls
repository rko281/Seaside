"Filed out from Dolphin Smalltalk 7"!

WAAbstractProtectionFilter subclass: #WARemoteAddressProtectionFilter
	instanceVariableNames: 'remoteAddress'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARemoteAddressProtectionFilter guid: (GUID fromString: '{3dadefab-aaf7-4bb2-b458-187ecb264751}')!
WARemoteAddressProtectionFilter comment: 'The remote address protection filter ensures that the wrapped request handler only accepts requests from the same IP. Do add this filter to a WASession for example to avoid session hijacking, do not add it to static request handlers such as WAApplication or WADispatcher as this might restrict access to the handler if your IP changes.Note that checking for IP addresses is not bullet proof and should never be used as the sole security measure for a web application as IP addresses can be easily spoofed.'!
!WARemoteAddressProtectionFilter categoriesForClass!Seaside-Core-Filter! !
!WARemoteAddressProtectionFilter methodsFor!

handleFiltered: aRequestContext 	(self verifyRequest: aRequestContext request) 		ifTrue: [ super handleFiltered: aRequestContext ]		ifFalse: [ 			aRequestContext responseGenerator				forbidden;				respond ]!

remoteAddress	^ remoteAddress!

remoteAddressFromRequest: aRequest	| result |	result := aRequest forwardedFor ifNil:[ aRequest remoteAddress ].	remoteAddress ifNil:[ remoteAddress := result ].	^ result!

verifyRequest: aRequest	^ (self remoteAddressFromRequest: aRequest) = self remoteAddress! !
!WARemoteAddressProtectionFilter categoriesFor: #handleFiltered:!processing!public! !
!WARemoteAddressProtectionFilter categoriesFor: #remoteAddress!private! !
!WARemoteAddressProtectionFilter categoriesFor: #remoteAddressFromRequest:!private! !
!WARemoteAddressProtectionFilter categoriesFor: #verifyRequest:!public!testing! !

