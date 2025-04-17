"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WAAbstractProtectionFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAbstractProtectionFilter guid: (GUID fromString: '{f753bca0-e6cb-4737-959d-f09a9dc89a04}')!

WAAbstractProtectionFilter comment: 'A protection filter protects the wrapped request handler, mostly useful to protect against session hijacking. See subclasses for different strategies.'!

!WAAbstractProtectionFilter categoriesForClass!Filter! !

!WAAbstractProtectionFilter class methodsFor!

isAbstract 	^ self == WAAbstractProtectionFilter! !

!WAAbstractProtectionFilter class categoriesForMethods!
isAbstract!public!testing! !
!

