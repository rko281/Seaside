"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WAAddHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAddHandlerPlugin guid: (GUID fromString: '{7df3ab7f-6233-47f4-a99a-eca566bb06a8}')!
WAAddHandlerPlugin comment: ''!
!WAAddHandlerPlugin categoriesForClass!Seaside-Tools-Web! !
!WAAddHandlerPlugin methodsFor!

execute	self requestor 		show: (WADispatcherAddPage new dispatcher: self requestor dispatcher; yourself)		onAnswer: [ :newHandler |			newHandler isNil 				ifFalse: [ self requestor configure: newHandler ] ]!

isActive	^ self requestor dispatcher notNil!

label	^ 'Add'!

priority	^ -100! !
!WAAddHandlerPlugin categoriesFor: #execute!actions!public! !
!WAAddHandlerPlugin categoriesFor: #isActive!public!testing! !
!WAAddHandlerPlugin categoriesFor: #label!accessing!public! !
!WAAddHandlerPlugin categoriesFor: #priority!accessing!public! !

