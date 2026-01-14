"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WASetDefaultHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASetDefaultHandlerPlugin guid: (GUID fromString: '{23051edb-632c-478c-b301-3331f3f14e34}')!

WASetDefaultHandlerPlugin comment: ''!

!WASetDefaultHandlerPlugin categoriesForClass!Seaside-Tools-Web! !

!WASetDefaultHandlerPlugin methodsFor!

execute	self handler parent defaultName: self handler name!

isActive	^ self handler notNil and: [ self handler parent notNil ]!

label	^ 'Set Default'!

priority	^ 100! !

!WASetDefaultHandlerPlugin categoriesForMethods!
execute!actions!public! !
isActive!public!testing! !
label!accessing!public! !
priority!accessing!public! !
!

