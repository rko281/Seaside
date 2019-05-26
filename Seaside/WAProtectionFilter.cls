"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WAProtectionFilter
	instanceVariableNames: 'remoteAddress'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAProtectionFilter guid: (GUID fromString: '{51aee535-145f-46d7-b77f-4255c07a01cc}')!
WAProtectionFilter comment: 'The protection filter ensures that the wrapped request handler only accepts requests from the same IP. Do add this filter to a WASession for example to avoid session hijacking, do not add it to static request handlers such as WAApplication or WADispatcher as this might restrict access to the handler if your IP changes.Note that checking for IP addresses is not bullet proof and should never be used as the sole security measure for a web application as IP addresses can be easily spoofed.'!
!WAProtectionFilter categoriesForClass!Seaside-Core-Filter! !
!WAProtectionFilter methodsFor!

handleFiltered: aRequestContext 	(self verifyRequest: aRequestContext request) 		ifTrue: [ super handleFiltered: aRequestContext ]		ifFalse: [ 			aRequestContext responseGenerator				forbidden;				respond ]!

remoteAddress	^ remoteAddress!

remoteAddressFromRequest: aRequest	remoteAddress ifNil: [		remoteAddress := aRequest			headerAt: 'x-forwarded-for'			ifAbsent: [				aRequest					headerAt: 'forwarded-for'					ifAbsent: [						aRequest remoteAddress ] ] ].	^ aRequest remoteAddress!

verifyRequest: aRequest	^ (self remoteAddressFromRequest: aRequest) = self remoteAddress! !
!WAProtectionFilter categoriesFor: #handleFiltered:!processing!public! !
!WAProtectionFilter categoriesFor: #remoteAddress!private! !
!WAProtectionFilter categoriesFor: #remoteAddressFromRequest:!private! !
!WAProtectionFilter categoriesFor: #verifyRequest:!public!testing! !

