"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WACopyHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACopyHandlerPlugin guid: (GUID fromString: '{2f72db9b-4182-45a1-ac65-bc3d35b87931}')!

WACopyHandlerPlugin comment: 'I make a copy of an application.'!

!WACopyHandlerPlugin categoriesForClass!Unclassified! !

!WACopyHandlerPlugin methodsFor!

execute	self requestor 		show: (WADispatcherCopyPage new handler: self handler; yourself)		onAnswer: [ :newHandler |			newHandler isNil 				ifFalse: [ self requestor configure: newHandler ] ]!

isActive	^ self handler notNil and: [ self handler parent notNil ]!

label	^ 'Copy'!

priority	^ 50! !

!WACopyHandlerPlugin categoriesForMethods!
execute!actions!public! !
isActive!public!testing! !
label!accessing!public! !
priority!accessing!public! !
!

