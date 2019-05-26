"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WACopyHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACopyHandlerPlugin guid: (GUID fromString: '{b9f3149f-312f-4a73-95ad-c2748f3963d7}')!
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

