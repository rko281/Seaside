"Filed out from Dolphin Smalltalk 7"!

WAConfigurationToolPlugin subclass: #WAAddHandlerPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAddHandlerPlugin guid: (GUID fromString: '{a05829f7-52a5-4b07-8e17-bec405492de6}')!
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

