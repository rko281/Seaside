"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WASetDefaultHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASetDefaultHandlerPlugin guid: (GUID fromString: '{449daf58-2179-4f48-a6e0-72980af405bb}')!
WASetDefaultHandlerPlugin comment: ''!
!WASetDefaultHandlerPlugin categoriesForClass!Seaside-Tools-Web! !
!WASetDefaultHandlerPlugin methodsFor!

execute	self handler parent defaultName: self handler name!

isActive	^ self handler notNil and: [ self handler parent notNil ]!

label	^ 'Set Default'!

priority	^ 100! !
!WASetDefaultHandlerPlugin categoriesFor: #execute!actions!public! !
!WASetDefaultHandlerPlugin categoriesFor: #isActive!public!testing! !
!WASetDefaultHandlerPlugin categoriesFor: #label!accessing!public! !
!WASetDefaultHandlerPlugin categoriesFor: #priority!accessing!public! !

