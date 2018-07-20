"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WAConfigureToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigureToolPlugin guid: (GUID fromString: '{351f141a-59fe-4990-ad2a-116bb40c100f}')!
WAConfigureToolPlugin comment: 'I display the configuration dialog for the currently active application'!
!WAConfigureToolPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAConfigureToolPlugin methodsFor!

execute	self open: (WAPluggableTool on: self application configurationComponent)!

label	^ 'Configure'!

priority	^ 200! !
!WAConfigureToolPlugin categoriesFor: #execute!actions!public! !
!WAConfigureToolPlugin categoriesFor: #label!accessing!public! !
!WAConfigureToolPlugin categoriesFor: #priority!accessing!public! !

