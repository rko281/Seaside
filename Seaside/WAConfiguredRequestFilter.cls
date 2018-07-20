"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WAConfiguredRequestFilter
	instanceVariableNames: 'configuration'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfiguredRequestFilter guid: (GUID fromString: '{411cc31c-6042-4ed6-917b-2dd65c364717}')!
WAConfiguredRequestFilter comment: ''!
!WAConfiguredRequestFilter categoriesForClass!Seaside-Core-Filter! !
!WAConfiguredRequestFilter methodsFor!

configuration	^ configuration!

defaultConfiguration	"Return the configuration (normally a new instance of WAUserConfiguration) to be	used with the Filter upon initialization."		self subclassResponsibility!

initialize	super initialize.	configuration := self defaultConfiguration! !
!WAConfiguredRequestFilter categoriesFor: #configuration!configuration!public! !
!WAConfiguredRequestFilter categoriesFor: #defaultConfiguration!configuration!public! !
!WAConfiguredRequestFilter categoriesFor: #initialize!initialization!public! !

