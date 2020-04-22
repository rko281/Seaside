"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #WAObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAObject guid: (GUID fromString: '{ee26ad50-3c29-4ada-982d-5db365333efc}')!
WAObject comment: 'A WAObject is the base class for all portable Seaside classes. It provides convenience methods for accessing the current request context, session and application.'!
!WAObject categoriesForClass!Seaside-Core-Base! !
!WAObject methodsFor!

requestContext	"Answer the current WARequestContext instance."	^ WACurrentRequestContext value! !
!WAObject categoriesFor: #requestContext!dynamic variables!public! !

!WAObject class methodsFor!

defaultErrorClass	^ WAError! !
!WAObject class categoriesFor: #defaultErrorClass!error handling!public! !

