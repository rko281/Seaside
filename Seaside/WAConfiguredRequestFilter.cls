"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WAConfiguredRequestFilter
	instanceVariableNames: 'configuration'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfiguredRequestFilter guid: (GUID fromString: '{b5543695-d8ee-49ed-8e62-657e855b348d}')!
WAConfiguredRequestFilter comment: ''!
!WAConfiguredRequestFilter categoriesForClass!Seaside-Core-Filter! !
!WAConfiguredRequestFilter methodsFor!

configuration	^ configuration!

defaultConfiguration	"Return the configuration (normally a new instance of WAUserConfiguration) to be	used with the Filter upon initialization."		self subclassResponsibility!

initialize	super initialize.	configuration := self defaultConfiguration! !
!WAConfiguredRequestFilter categoriesFor: #configuration!configuration!public! !
!WAConfiguredRequestFilter categoriesFor: #defaultConfiguration!configuration!public! !
!WAConfiguredRequestFilter categoriesFor: #initialize!initialization!public! !

