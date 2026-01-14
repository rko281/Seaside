"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WALegacyRedirectionHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WALegacyRedirectionHandler guid: (GUID fromString: '{f8c1aa11-c865-4901-9712-c102073bb86c}')!

WALegacyRedirectionHandler comment: 'I provide compatibility with old Seaside URLs that have Seaside in the path (eg. ''/seaside/examples/counter'') by simply removing it.'!

!WALegacyRedirectionHandler categoriesForClass!Seaside-Environment! !

!WALegacyRedirectionHandler methodsFor!

handleFiltered: aRequestContext	| url |	url := aRequestContext request url copy.	url path removeFirst.	aRequestContext respond: [ :response |		response			movedPermanently;			location: url ]! !

!WALegacyRedirectionHandler categoriesForMethods!
handleFiltered:!handling!public! !
!

!WALegacyRedirectionHandler class methodsFor!

description	^ 'Legacy redirection'! !

!WALegacyRedirectionHandler class categoriesForMethods!
description!accessing!public! !
!

