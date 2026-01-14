"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WAOpenHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOpenHandlerPlugin guid: (GUID fromString: '{5a860dee-0792-4f09-abc7-e48be0eab4e8}')!

WAOpenHandlerPlugin comment: ''!

!WAOpenHandlerPlugin categoriesForClass!Seaside-Tools-Web! !

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

