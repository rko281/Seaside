"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WAConfigureToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigureToolPlugin guid: (GUID fromString: '{daa19910-5797-4fb1-86dc-b522d80302aa}')!

WAConfigureToolPlugin comment: 'I display the configuration dialog for the currently active application'!

!WAConfigureToolPlugin categoriesForClass!Seaside-Development-Plugins! !

!WAConfigureToolPlugin methodsFor!

execute	self open: (WAPluggableTool on: self application configurationComponent)!

label	^ 'Configure'!

priority	^ 200! !

!WAConfigureToolPlugin categoriesForMethods!
execute!actions!public! !
label!accessing!public! !
priority!accessing!public! !
!

