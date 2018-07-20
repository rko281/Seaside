"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WASetDefaultHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASetDefaultHandlerPlugin guid: (GUID fromString: '{531a3a44-a95f-446f-ac63-66bfa930d3d2}')!
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

