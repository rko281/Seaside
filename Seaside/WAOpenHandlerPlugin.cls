"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WAOpenHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOpenHandlerPlugin guid: (GUID fromString: '{dfc3beb2-548e-4770-b72d-af4fc94d91fb}')!

WAOpenHandlerPlugin comment: ''!

!WAOpenHandlerPlugin categoriesForClass!Unclassified! !

!WAOpenHandlerPlugin methodsFor!

execute	self requestContext redirectTo: self handler url!

isActive	^ self handler notNil!

label	^ 'Open'!

priority	^ 10! !

!WAOpenHandlerPlugin categoriesForMethods!
execute!actions!public! !
isActive!public!testing! !
label!accessing!public! !
priority!accessing!public! !
!

