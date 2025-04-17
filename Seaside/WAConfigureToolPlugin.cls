"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WAConfigureToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigureToolPlugin guid: (GUID fromString: '{9f84ba3a-8374-4c8d-a7ca-008e66843ebc}')!

WAConfigureToolPlugin comment: 'I display the configuration dialog for the currently active application'!

!WAConfigureToolPlugin categoriesForClass!Plugins! !

!WAConfigureToolPlugin methodsFor!

execute	self open: (WAPluggableTool on: self application configurationComponent)!

label	^ 'Configure'!

priority	^ 200! !

!WAConfigureToolPlugin categoriesForMethods!
execute!actions!public! !
label!accessing!public! !
priority!accessing!public! !
!

