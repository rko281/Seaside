"Filed out from Dolphin Smalltalk 7"!

WADynamicVariable subclass: #WACurrentRequestContext
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACurrentRequestContext guid: (GUID fromString: '{993e2dd9-e849-436e-bc75-3759214fde2a}')!
WACurrentRequestContext comment: 'A WACurrentRequestContext is a thread local variable that points to the current WARequestContext.'!
!WACurrentRequestContext categoriesForClass!Seaside-Core-RequestHandling! !
!WACurrentRequestContext class methodsFor!

defaultValue	^ WARequestContextNotFound signal! !
!WACurrentRequestContext class categoriesFor: #defaultValue!defaults!public! !

