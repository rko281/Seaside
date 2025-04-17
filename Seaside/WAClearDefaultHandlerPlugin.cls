"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WAClearDefaultHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClearDefaultHandlerPlugin guid: (GUID fromString: '{e1e77e9c-1be0-436a-8532-922df049dc2c}')!

WAClearDefaultHandlerPlugin comment: ''!

!WAClearDefaultHandlerPlugin categoriesForClass!Unclassified! !

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

