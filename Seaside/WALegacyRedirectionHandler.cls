"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WALegacyRedirectionHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WALegacyRedirectionHandler guid: (GUID fromString: '{efad3099-cf9e-4b91-b043-e3eaf495a06c}')!
WALegacyRedirectionHandler comment: 'I provide compatibility with old Seaside URLs that have Seaside in the path (eg. ''/seaside/examples/counter'') by simply removing it.'!
!WALegacyRedirectionHandler categoriesForClass!Seaside-Environment! !
!WALegacyRedirectionHandler methodsFor!

handleFiltered: aRequestContext	| url |	url := aRequestContext request url copy.	url path removeFirst.	aRequestContext respond: [ :response |		response			movedPermanently;			location: url ]! !
!WALegacyRedirectionHandler categoriesFor: #handleFiltered:!handling!public! !

!WALegacyRedirectionHandler class methodsFor!

description	^ 'Legacy redirection'! !
!WALegacyRedirectionHandler class categoriesFor: #description!accessing!public! !

