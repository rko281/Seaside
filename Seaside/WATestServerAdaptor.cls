"Filed out from Dolphin Smalltalk 7"!

WAServerAdaptor subclass: #WATestServerAdaptor
	instanceVariableNames: 'status'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATestServerAdaptor guid: (GUID fromString: '{23f27a3e-938b-42e7-846f-f75388663d1d}')!
WATestServerAdaptor comment: 'A WATestServerAdaptor is a stub of a server adaptor. It doesn''t start an adaptor, it just pretends to allow testing of the server manager'!
!WATestServerAdaptor categoriesForClass!Seaside-Tests-Core-Server! !
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
!WATestServerAdaptor categoriesFor: #basicStop!converting/request!public! !
!WATestServerAdaptor categoriesFor: #isRunning!public!testing! !
!WATestServerAdaptor categoriesFor: #isStarting!public!testing! !
!WATestServerAdaptor categoriesFor: #isStopped!public!testing! !
!WATestServerAdaptor categoriesFor: #isStopping!public!testing! !
!WATestServerAdaptor categoriesFor: #requestAddressFor:!converting/request!public! !
!WATestServerAdaptor categoriesFor: #requestBodyFor:!converting/request!public! !
!WATestServerAdaptor categoriesFor: #requestCookiesFor:!converting/request!public! !
!WATestServerAdaptor categoriesFor: #requestFieldsFor:!converting/request!public! !
!WATestServerAdaptor categoriesFor: #requestHeadersFor:!converting/request!public! !
!WATestServerAdaptor categoriesFor: #requestMethodFor:!converting/request!public! !
!WATestServerAdaptor categoriesFor: #requestVersionFor:!converting/request!public! !
!WATestServerAdaptor categoriesFor: #responseFrom:!converting!public! !
!WATestServerAdaptor categoriesFor: #running!initialization!public! !
!WATestServerAdaptor categoriesFor: #starting!initialization!public! !
!WATestServerAdaptor categoriesFor: #stopped!initialization!public! !
!WATestServerAdaptor categoriesFor: #stopping!initialization!public! !

