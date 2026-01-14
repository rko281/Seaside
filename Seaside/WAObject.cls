"Filed out from Dolphin Smalltalk"!

GRObject subclass: #WAObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAObject guid: (GUID fromString: '{ed6d0d01-b162-4716-a35e-31869143ad54}')!

WAObject comment: 'A WAObject is the base class for all portable Seaside classes. It provides convenience methods for accessing the current request context, session and application.'!

!WAObject categoriesForClass!Seaside-Core-Base! !

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

