"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WATrailingSlashFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATrailingSlashFilter guid: (GUID fromString: '{855d19e0-a3fc-48a6-be05-2d4c72dc63a0}')!
WATrailingSlashFilter comment: 'Enforces a trailing slash on the wrapped request handler.'!
!WATrailingSlashFilter categoriesForClass!Seaside-Core-Filter! !
!WATrailingSlashFilter methodsFor!

handleFiltered: aRequestContext	(self shouldRedirect: aRequestContext)		ifFalse: [ super handleFiltered: aRequestContext ]		ifTrue: [ self redirectWithTrailingSlash: aRequestContext ]!

redirectWithTrailingSlash: aRequestContext 	aRequestContext responseGenerator		redirectTo: (aRequestContext request url copy			takeServerParametersFromRequest: aRequestContext request;			slash: true;			yourself);		respond!

shouldRedirect: aRequestContext	^ aRequestContext request isGet and: [ aRequestContext request url slash not ]! !
!WATrailingSlashFilter categoriesFor: #handleFiltered:!processing!public! !
!WATrailingSlashFilter categoriesFor: #redirectWithTrailingSlash:!processing!public! !
!WATrailingSlashFilter categoriesFor: #shouldRedirect:!public!testing! !

