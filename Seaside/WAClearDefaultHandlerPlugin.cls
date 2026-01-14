"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WAClearDefaultHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClearDefaultHandlerPlugin guid: (GUID fromString: '{2259fcab-90dd-476b-a0e2-2d40b129bbcf}')!

WAClearDefaultHandlerPlugin comment: ''!

!WAClearDefaultHandlerPlugin categoriesForClass!Seaside-Tools-Web! !

!WAClearDefaultHandlerPlugin methodsFor!

execute	self requestor dispatcher defaultName: nil!

isActive	^ self requestor dispatcher notNil and: [ self requestor dispatcher defaultName notNil ]!

label	^ 'Clear Default'!

priority	^ -90! !

!WAClearDefaultHandlerPlugin categoriesForMethods!
execute!actions!public! !
isActive!public!testing! !
label!accessing!public! !
priority!accessing!public! !
!

