"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WARemoveHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARemoveHandlerPlugin guid: (GUID fromString: '{6a1ac5f9-436c-4231-aa1c-00abffb32b49}')!

WARemoveHandlerPlugin comment: 'I remove an application.'!

!WARemoveHandlerPlugin categoriesForClass!Seaside-Tools-Web! !

!WARemoveHandlerPlugin methodsFor!

clickScript	^ 'return confirm("Really delete ', self handler basicUrl pathStringUnencoded, '?")'!

execute	| aDispatcher |	aDispatcher := self handler parent.	aDispatcher unregister: self handler.	self requestor configure: aDispatcher!

isActive	^ self handler notNil and: [ self handler parent notNil ]!

label	^ 'Remove'!

priority	^ 60! !

!WARemoveHandlerPlugin categoriesForMethods!
clickScript!accessing!public! !
execute!actions!public! !
isActive!public!testing! !
label!accessing!public! !
priority!accessing!public! !
!

