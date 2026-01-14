"Filed out from Dolphin Smalltalk"!

WADynamicVariable subclass: #WACurrentRequestContext
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACurrentRequestContext guid: (GUID fromString: '{b6709f4d-f26e-4070-80cc-4b2521a0a698}')!

WACurrentRequestContext comment: 'A WACurrentRequestContext is a thread local variable that points to the current WARequestContext.'!

!WACurrentRequestContext categoriesForClass!Seaside-Core-RequestHandling! !

!WACurrentRequestContext class methodsFor!

defaultValue	^ WARequestContextNotFound signal! !

!WACurrentRequestContext class categoriesForMethods!
defaultValue!defaults!public! !
!

