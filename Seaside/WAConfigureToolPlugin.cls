"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WAConfigureToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigureToolPlugin guid: (GUID fromString: '{11c327e8-6125-46ba-99d8-e94145c7ddf3}')!
WAConfigureToolPlugin comment: 'I display the configuration dialog for the currently active application'!
!WAConfigureToolPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAConfigureToolPlugin methodsFor!

execute	self open: (WAPluggableTool on: self application configurationComponent)!

label	^ 'Configure'!

priority	^ 200! !
!WAConfigureToolPlugin categoriesFor: #execute!actions!public! !
!WAConfigureToolPlugin categoriesFor: #label!accessing!public! !
!WAConfigureToolPlugin categoriesFor: #priority!accessing!public! !

