"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WAClearDefaultHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClearDefaultHandlerPlugin guid: (GUID fromString: '{6f8ad595-4e6f-4799-b2a7-c13ed5faf5d4}')!
WAClearDefaultHandlerPlugin comment: ''!
!WAClearDefaultHandlerPlugin categoriesForClass!Seaside-Tools-Web! !
!WAClearDefaultHandlerPlugin methodsFor!

execute	self requestor dispatcher defaultName: nil!

isActive	^ self requestor dispatcher notNil and: [ self requestor dispatcher defaultName notNil ]!

label	^ 'Clear Default'!

priority	^ -90! !
!WAClearDefaultHandlerPlugin categoriesFor: #execute!actions!public! !
!WAClearDefaultHandlerPlugin categoriesFor: #isActive!public!testing! !
!WAClearDefaultHandlerPlugin categoriesFor: #label!accessing!public! !
!WAClearDefaultHandlerPlugin categoriesFor: #priority!accessing!public! !

