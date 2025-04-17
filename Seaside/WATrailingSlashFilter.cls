"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WATrailingSlashFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATrailingSlashFilter guid: (GUID fromString: '{7e3a132c-bbcf-42a9-b1f4-2b540a237b1b}')!

WATrailingSlashFilter comment: 'Enforces a trailing slash on the wrapped request handler.'!

!WATrailingSlashFilter categoriesForClass!Filter! !

!WATrailingSlashFilter methodsFor!

handleFiltered: aRequestContext	(self shouldRedirect: aRequestContext)		ifFalse: [ super handleFiltered: aRequestContext ]		ifTrue: [ self redirectWithTrailingSlash: aRequestContext ]!

redirectWithTrailingSlash: aRequestContext 	aRequestContext responseGenerator		redirectTo: (aRequestContext request url copy			takeServerParametersFromRequest: aRequestContext request;			slash: true;			yourself);		respond!

shouldRedirect: aRequestContext	^ aRequestContext request isGet and: [ aRequestContext request url slash not ]! !

!WATrailingSlashFilter categoriesForMethods!
handleFiltered:!processing!public! !
redirectWithTrailingSlash:!processing!public! !
shouldRedirect:!public!testing! !
!

