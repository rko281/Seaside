"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WAClearDefaultHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClearDefaultHandlerPlugin guid: (GUID fromString: '{581181d3-95e4-4f4b-9fbe-79cd9fd12ad5}')!
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

