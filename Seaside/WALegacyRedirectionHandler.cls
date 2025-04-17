"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WALegacyRedirectionHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WALegacyRedirectionHandler guid: (GUID fromString: '{142736c7-ae72-4f2b-a890-fa81ace710be}')!

WALegacyRedirectionHandler comment: 'I provide compatibility with old Seaside URLs that have Seaside in the path (eg. ''/seaside/examples/counter'') by simply removing it.'!

!WALegacyRedirectionHandler categoriesForClass!Unclassified! !

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

