"Filed out from Dolphin Smalltalk 7"!

WASessionTrackingStrategy subclass: #WAInvisibleSessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInvisibleSessionTrackingStrategy guid: (GUID fromString: '{9b97ed8b-e117-41a0-91f9-30c7ab4b4d0b}')!
WAInvisibleSessionTrackingStrategy comment: 'I am the abstract base class for classes that that use some request attribute that is present on every request for tracking sessions. For document handlers query fields are used.'!
!WAInvisibleSessionTrackingStrategy categoriesForClass!Seaside-Session! !
!WAInvisibleSessionTrackingStrategy methodsFor!

addKey: aString toContext: aRequestContext	"The session id is already present, no need to add it."!

addKey: aString toUrl: aUrl	"The session id is already present, no need to add it."!

keyFromContext: aRequestContext	"If a query field is present it overrides a session id."	| key |	key := self queryFieldKeyFromContext: aRequestContext.	^ key isNil		ifTrue: [ self sessionIdFromContext: aRequestContext ]		ifFalse: [ key ]!

noHandlerFoundForKey: aString in: anApplication context: aRequestContext	aString = (self keyFromContext: aRequestContext)		ifTrue: [			"expired session, create a new session"			anApplication handleDefault: aRequestContext withKey: aString ]		ifFalse: [			"repired document handler, answer not found"			super noHandlerFoundForKey: aString in: anApplication context: aRequestContext ]!

sessionIdFromContext: aRequestContext	 self subclassResponsibility! !
!WAInvisibleSessionTrackingStrategy categoriesFor: #addKey:toContext:!public! !
!WAInvisibleSessionTrackingStrategy categoriesFor: #addKey:toUrl:!public! !
!WAInvisibleSessionTrackingStrategy categoriesFor: #keyFromContext:!public! !
!WAInvisibleSessionTrackingStrategy categoriesFor: #noHandlerFoundForKey:in:context:!public! !
!WAInvisibleSessionTrackingStrategy categoriesFor: #sessionIdFromContext:!private! !

!WAInvisibleSessionTrackingStrategy class methodsFor!

isAbstract	^ self name = #WAInvisibleSessionTrackingStrategy! !
!WAInvisibleSessionTrackingStrategy class categoriesFor: #isAbstract!public!testing! !

