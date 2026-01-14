"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WAAbstractProtectionFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAbstractProtectionFilter guid: (GUID fromString: '{935003d0-1b37-406e-b16a-81185e993363}')!

WAAbstractProtectionFilter comment: 'A protection filter protects the wrapped request handler, mostly useful to protect against session hijacking. See subclasses for different strategies.'!

!WAAbstractProtectionFilter categoriesForClass!Seaside-Core-Filter! !

!WAAbstractProtectionFilter class methodsFor!

isAbstract 	^ self == WAAbstractProtectionFilter! !

!WAAbstractProtectionFilter class categoriesForMethods!
isAbstract!public!testing! !
!

