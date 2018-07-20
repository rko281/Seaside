"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WAOpenHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOpenHandlerPlugin guid: (GUID fromString: '{377252fd-b324-4707-9f9f-a0088789fcab}')!
WAOpenHandlerPlugin comment: ''!
!WAOpenHandlerPlugin categoriesForClass!Seaside-Tools-Web! !
!WAOpenHandlerPlugin methodsFor!

execute	self requestContext redirectTo: self handler url!

isActive	^ self handler notNil!

label	^ 'Open'!

priority	^ 10! !
!WAOpenHandlerPlugin categoriesFor: #execute!actions!public! !
!WAOpenHandlerPlugin categoriesFor: #isActive!public!testing! !
!WAOpenHandlerPlugin categoriesFor: #label!accessing!public! !
!WAOpenHandlerPlugin categoriesFor: #priority!accessing!public! !

