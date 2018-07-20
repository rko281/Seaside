"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #WAObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAObject guid: (GUID fromString: '{4473ac5d-5385-4a18-94b8-494990dc2fcf}')!
WAObject comment: 'A WAObject is the base class for all portable Seaside classes. It guarantees that #initialize is send upon object creation. Additionally it provides convenience methods for accessing the current request context, session and application.'!
!WAObject categoriesForClass!Seaside-Core! !
!WAObject methodsFor!

requestContext	"Answer the current WARequestContext instance."	^ WACurrentRequestContext value! !
!WAObject categoriesFor: #requestContext!dynamic variables!public! !

!WAObject class methodsFor!

defaultErrorClass	^ WAError! !
!WAObject class categoriesFor: #defaultErrorClass!error handling!public! !

