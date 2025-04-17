"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WATerminateToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATerminateToolPlugin guid: (GUID fromString: '{b9525d43-daf7-4c6a-80e8-db5b2aa741ad}')!

WATerminateToolPlugin comment: 'I try to terminate the process handling this session. This can work of you''re at 100% CPU.'!

!WATerminateToolPlugin categoriesForClass!Plugins! !

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

