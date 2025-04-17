"Filed out from Dolphin Smalltalk"!

WAConfigurationToolPlugin subclass: #WAAddHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAddHandlerPlugin guid: (GUID fromString: '{8d8f991d-d14d-4e03-972b-b6d50e688536}')!

WAAddHandlerPlugin comment: ''!

!WAAddHandlerPlugin categoriesForClass!Unclassified! !

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

