"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WARemoveHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARemoveHandlerPlugin guid: (GUID fromString: '{e9174423-61ff-4b6c-b183-3ae8e7bb1d2a}')!
WARemoveHandlerPlugin comment: 'I remove an application.'!
!WARemoveHandlerPlugin categoriesForClass!Seaside-Tools-Web! !
!WARemoveHandlerPlugin methodsFor!

clickScript	^ 'return confirm("Really delete ', self handler basicUrl pathStringUnencoded, '?")'!

execute	| aDispatcher |	aDispatcher := self handler parent.	aDispatcher unregister: self handler.	self requestor configure: aDispatcher!

isActive	^ self handler notNil and: [ self handler parent notNil ]!

label	^ 'Remove'!

priority	^ 60! !
!WARemoveHandlerPlugin categoriesFor: #clickScript!accessing!public! !
!WARemoveHandlerPlugin categoriesFor: #execute!actions!public! !
!WARemoveHandlerPlugin categoriesFor: #isActive!public!testing! !
!WARemoveHandlerPlugin categoriesFor: #label!accessing!public! !
!WARemoveHandlerPlugin categoriesFor: #priority!accessing!public! !

