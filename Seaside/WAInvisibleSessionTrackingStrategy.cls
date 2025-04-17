"Filed out from Dolphin Smalltalk"!

WASessionTrackingStrategy subclass: #WAInvisibleSessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInvisibleSessionTrackingStrategy guid: (GUID fromString: '{cc9f4f49-331b-42f5-b5ef-5662230e0149}')!

WAInvisibleSessionTrackingStrategy comment: 'I am the abstract base class for classes that that use some request attribute that is present on every request for tracking sessions. For document handlers query fields are used.'!

!WAInvisibleSessionTrackingStrategy categoriesForClass!Tracking! !

!WAInvisibleSessionTrackingStrategy methodsFor!

addKey: aString toContext: aRequestContext	"The session id is already present, no need to add it."!

addKey: aString toUrl: aUrl	"The session id is already present, no need to add it."!

keyFromContext: aRequestContext	"If a query field is present it overrides a session id."	| key |	key := self queryFieldKeyFromContext: aRequestContext.	^ key isNil		ifTrue: [ self sessionIdFromContext: aRequestContext ]		ifFalse: [ key ]!

noHandlerFoundForKey: aString in: anApplication context: aRequestContext	aString = (self keyFromContext: aRequestContext)		ifTrue: [			"expired session, create a new session"			anApplication handleDefault: aRequestContext withKey: aString ]		ifFalse: [			"repired document handler, answer not found"			super noHandlerFoundForKey: aString in: anApplication context: aRequestContext ]!

sessionIdFromContext: aRequestContext	 self subclassResponsibility! !

!WAInvisibleSessionTrackingStrategy categoriesForMethods!
addKey:toContext:!public! !
addKey:toUrl:!public! !
keyFromContext:!public! !
noHandlerFoundForKey:in:context:!public! !
sessionIdFromContext:!private! !
!

!WAInvisibleSessionTrackingStrategy class methodsFor!

isAbstract	^ self name = #WAInvisibleSessionTrackingStrategy! !

!WAInvisibleSessionTrackingStrategy class categoriesForMethods!
isAbstract!public!testing! !
!

