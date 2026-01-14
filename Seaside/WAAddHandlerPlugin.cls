"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WAAddHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAddHandlerPlugin guid: (GUID fromString: '{87aa81a5-3712-4990-9756-a6c2fbd569c7}')!

WAAddHandlerPlugin comment: ''!

!WAAddHandlerPlugin categoriesForClass!Seaside-Tools-Web! !

!WAAddHandlerPlugin methodsFor!

execute	self requestor 		show: (WADispatcherAddPage new dispatcher: self requestor dispatcher; yourself)		onAnswer: [ :newHandler |			newHandler isNil 				ifFalse: [ self requestor configure: newHandler ] ]!

isActive	^ self requestor dispatcher notNil!

label	^ 'Add'!

priority	^ -100! !

!WAAddHandlerPlugin categoriesForMethods!
execute!actions!public! !
isActive!public!testing! !
label!accessing!public! !
priority!accessing!public! !
!

