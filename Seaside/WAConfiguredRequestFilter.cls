"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WAConfiguredRequestFilter
	instanceVariableNames: 'configuration'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfiguredRequestFilter guid: (GUID fromString: '{08687847-a79d-43b3-8463-bb9a8dd4c2a7}')!

WAConfiguredRequestFilter comment: ''!

!WAConfiguredRequestFilter categoriesForClass!Seaside-Core-Filter! !

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

