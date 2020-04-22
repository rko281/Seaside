﻿"Filed out from Dolphin Smalltalk 7"!

WAAbstractProtectionFilter subclass: #WARemoteAddressProtectionFilter
	instanceVariableNames: 'remoteAddress'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARemoteAddressProtectionFilter guid: (GUID fromString: '{3dadefab-aaf7-4bb2-b458-187ecb264751}')!
WARemoteAddressProtectionFilter comment: 'The remote address protection filter ensures that the wrapped request handler only accepts requests from the same IP. Do add this filter to a WASession for example to avoid session hijacking, do not add it to static request handlers such as WAApplication or WADispatcher as this might restrict access to the handler if your IP changes.
!WARemoteAddressProtectionFilter categoriesForClass!Seaside-Core-Filter! !
!WARemoteAddressProtectionFilter methodsFor!

handleFiltered: aRequestContext 

remoteAddress

remoteAddressFromRequest: aRequest

verifyRequest: aRequest
!WARemoteAddressProtectionFilter categoriesFor: #handleFiltered:!processing!public! !
!WARemoteAddressProtectionFilter categoriesFor: #remoteAddress!private! !
!WARemoteAddressProtectionFilter categoriesFor: #remoteAddressFromRequest:!private! !
!WARemoteAddressProtectionFilter categoriesFor: #verifyRequest:!public!testing! !
