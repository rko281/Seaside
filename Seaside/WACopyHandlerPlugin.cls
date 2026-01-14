"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WACopyHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACopyHandlerPlugin guid: (GUID fromString: '{6729b6b0-820d-40f0-b7e0-5d74ea754120}')!

WACopyHandlerPlugin comment: 'I make a copy of an application.'!

!WACopyHandlerPlugin categoriesForClass!Seaside-Tools-Web! !

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

