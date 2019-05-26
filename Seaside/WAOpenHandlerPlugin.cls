"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WAOpenHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOpenHandlerPlugin guid: (GUID fromString: '{707c6ed4-a9f5-4e52-a694-d39e722d1816}')!
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

