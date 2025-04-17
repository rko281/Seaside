"Filed out from Dolphin Smalltalk"!

GRObject subclass: #WAObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAObject guid: (GUID fromString: '{7209d6eb-25f3-4ceb-91c9-1d9508981535}')!

WAObject comment: 'A WAObject is the base class for all portable Seaside classes. It provides convenience methods for accessing the current request context, session and application.'!

!WAObject categoriesForClass!Base! !

!WAObject methodsFor!

requestContext	"Answer the current WARequestContext instance."	^ WACurrentRequestContext value! !

!WAObject categoriesForMethods!
requestContext!dynamic variables!public! !
!

!WAObject class methodsFor!

defaultErrorClass	^ WAError! !

!WAObject class categoriesForMethods!
defaultErrorClass!error handling!public! !
!

