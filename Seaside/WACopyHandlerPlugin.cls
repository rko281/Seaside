"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WACopyHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACopyHandlerPlugin guid: (GUID fromString: '{e954f7b5-7379-4e7a-a526-d3c2f91bcc2c}')!
WACopyHandlerPlugin comment: 'I make a copy of an application.'!
!WACopyHandlerPlugin categoriesForClass!Seaside-Tools-Web! !
!WACopyHandlerPlugin methodsFor!

execute	self requestor 		show: (WADispatcherCopyPage new handler: self handler; yourself)		onAnswer: [ :newHandler |			newHandler isNil 				ifFalse: [ self requestor configure: newHandler ] ]!

isActive	^ self handler notNil and: [ self handler parent notNil ]!

label	^ 'Copy'!

priority	^ 50! !
!WACopyHandlerPlugin categoriesFor: #execute!actions!public! !
!WACopyHandlerPlugin categoriesFor: #isActive!public!testing! !
!WACopyHandlerPlugin categoriesFor: #label!accessing!public! !
!WACopyHandlerPlugin categoriesFor: #priority!accessing!public! !

