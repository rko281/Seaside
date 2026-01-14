"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WATrailingSlashFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATrailingSlashFilter guid: (GUID fromString: '{e5806443-a980-4b58-a28d-21352a563df7}')!

WATrailingSlashFilter comment: 'Enforces a trailing slash on the wrapped request handler.'!

!WATrailingSlashFilter categoriesForClass!Seaside-Core-Filter! !

!WATrailingSlashFilter methodsFor!

handleFiltered: aRequestContext	(self shouldRedirect: aRequestContext)		ifFalse: [ super handleFiltered: aRequestContext ]		ifTrue: [ self redirectWithTrailingSlash: aRequestContext ]!

redirectWithTrailingSlash: aRequestContext 	aRequestContext responseGenerator		redirectTo: (aRequestContext request url copy			takeServerParametersFromRequest: aRequestContext request;			slash: true;			yourself);		respond!

shouldRedirect: aRequestContext	^ aRequestContext request isGet and: [ aRequestContext request url slash not ]! !

!WATrailingSlashFilter categoriesForMethods!
handleFiltered:!processing!public! !
redirectWithTrailingSlash:!processing!public! !
shouldRedirect:!public!testing! !
!

