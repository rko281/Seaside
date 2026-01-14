"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WATerminateToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATerminateToolPlugin guid: (GUID fromString: '{9865fb6a-061c-4142-a072-2c92af910930}')!

WATerminateToolPlugin comment: 'I try to terminate the process handling this session. This can work of you''re at 100% CPU.'!

!WATerminateToolPlugin categoriesForClass!Seaside-Development-Plugins! !

!WATerminateToolPlugin methodsFor!

isActive	^ self application preferenceAt: #sessionAllowTermination!

label	^ 'Terminate'!

priority	^ 600!

renderContentOn: html	html anchor		class: self cssClass;		url: (html actionUrl			withField: 'terminate');		with: self label! !

!WATerminateToolPlugin categoriesForMethods!
isActive!public!testing! !
label!accessing!public! !
priority!accessing!public! !
renderContentOn:!public!rendering! !
!

