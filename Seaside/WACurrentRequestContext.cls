"Filed out from Dolphin Smalltalk"!

WADynamicVariable subclass: #WACurrentRequestContext
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACurrentRequestContext guid: (GUID fromString: '{9f888369-f777-4c0e-8b04-dd007222bf03}')!

WACurrentRequestContext comment: 'A WACurrentRequestContext is a thread local variable that points to the current WARequestContext.'!

!WACurrentRequestContext categoriesForClass!RequestHandling! !

!WACurrentRequestContext class methodsFor!

defaultValue	^ WARequestContextNotFound signal! !

!WACurrentRequestContext class categoriesForMethods!
defaultValue!defaults!public! !
!

