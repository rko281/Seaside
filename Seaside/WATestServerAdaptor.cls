"Filed out from Dolphin Smalltalk"!

WAServerAdaptor subclass: #WATestServerAdaptor
	instanceVariableNames: 'status'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATestServerAdaptor guid: (GUID fromString: '{71814e51-d28a-4b66-81f7-0fdfb94542cb}')!

WATestServerAdaptor comment: 'A WATestServerAdaptor is a stub of a server adaptor. It doesn''t start an adaptor, it just pretends to allow testing of the server manager'!

!WATestServerAdaptor categoriesForClass!Server! !

!WATestServerAdaptor methodsFor!

basicStop	status := #stopped!

isRunning	^ status = #running!

isStarting	^ status = #starting!

isStopped	^ status = #stopped!

isStopping	^ status = #stopping!

requestAddressFor: aNativeRequest	self shouldNotImplement!

requestBodyFor: aNativeRequest	self shouldNotImplement!

requestCookiesFor: aNativeRequest	self shouldNotImplement!

requestFieldsFor: aNativeRequest	self shouldNotImplement!

requestHeadersFor: aNativeRequest	self shouldNotImplement!

requestMethodFor: aNativeRequest	self shouldNotImplement!

requestVersionFor: aNativeRequest	self shouldNotImplement!

responseFrom: aRequestContext	self shouldNotImplement!

running	status := #running!

starting	status := #starting!

stopped	status := #stopped!

stopping	status := #stopping! !

!WATestServerAdaptor categoriesForMethods!
basicStop!converting/request!public! !
isRunning!public!testing! !
isStarting!public!testing! !
isStopped!public!testing! !
isStopping!public!testing! !
requestAddressFor:!converting/request!public! !
requestBodyFor:!converting/request!public! !
requestCookiesFor:!converting/request!public! !
requestFieldsFor:!converting/request!public! !
requestHeadersFor:!converting/request!public! !
requestMethodFor:!converting/request!public! !
requestVersionFor:!converting/request!public! !
responseFrom:!converting!public! !
running!initialization!public! !
starting!initialization!public! !
stopped!initialization!public! !
stopping!initialization!public! !
!

