"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WASetDefaultHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASetDefaultHandlerPlugin guid: (GUID fromString: '{6199a186-5676-44ef-a381-f5c5101c8189}')!

WASetDefaultHandlerPlugin comment: ''!

!WASetDefaultHandlerPlugin categoriesForClass!Unclassified! !

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

