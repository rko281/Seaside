"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WAConfiguredRequestFilter
	instanceVariableNames: 'configuration'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfiguredRequestFilter guid: (GUID fromString: '{7e00445d-c102-4d94-80f8-bfb4b198b57e}')!

WAConfiguredRequestFilter comment: ''!

!WAConfiguredRequestFilter categoriesForClass!Filter! !

!WAConfiguredRequestFilter methodsFor!

configuration	^ configuration!

defaultConfiguration	"Return the configuration (normally a new instance of WAUserConfiguration) to be	used with the Filter upon initialization."		self subclassResponsibility!

initialize	super initialize.	configuration := self defaultConfiguration! !

!WAConfiguredRequestFilter categoriesForMethods!
configuration!configuration!public! !
defaultConfiguration!configuration!public! !
initialize!initialization!public! !
!

!WAConfiguredRequestFilter class methodsFor!

isAbstract 	^ self == WAConfiguredRequestFilter! !

!WAConfiguredRequestFilter class categoriesForMethods!
isAbstract!public!testing! !
!

