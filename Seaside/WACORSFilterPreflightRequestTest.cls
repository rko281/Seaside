"Filed out from Dolphin Smalltalk"!

WACORSFilterTest subclass: #WACORSFilterPreflightRequestTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACORSFilterPreflightRequestTest guid: (GUID fromString: '{42cd9c1d-e544-4b7e-8226-bbd28cdab3cb}')!

WACORSFilterPreflightRequestTest comment: ''!

!WACORSFilterPreflightRequestTest categoriesForClass!Seaside-Tests-Core-Filter! !

!WACORSFilterPreflightRequestTest methodsFor!

createRequest	| headers request |	headers := Dictionary new.	headers at: 'origin' put: 'http://localhost:8080'.	request := WARequest		method: 'OPTIONS'		uri: '/corsfiltertest'.	request setHeaders: headers.	^ request! !

!WACORSFilterPreflightRequestTest categoriesForMethods!
createRequest!configuration!public! !
!

