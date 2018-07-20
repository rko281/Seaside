"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WATerminateToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATerminateToolPlugin guid: (GUID fromString: '{d33ebee9-b3b6-4a70-ab4b-218550fc1360}')!
WATerminateToolPlugin comment: 'I try to terminate the process handling this session. This can work of you''re at 100% CPU.'!
!WATerminateToolPlugin categoriesForClass!Seaside-Development-Plugins! !
!WATerminateToolPlugin methodsFor!

isActive	^ self application preferenceAt: #sessionAllowTermination!

label	^ 'Terminate'!

priority	^ 600!

renderContentOn: html	html anchor		class: self cssClass;		url: (html actionUrl			withField: 'terminate');		with: self label! !
!WATerminateToolPlugin categoriesFor: #isActive!public!testing! !
!WATerminateToolPlugin categoriesFor: #label!accessing!public! !
!WATerminateToolPlugin categoriesFor: #priority!accessing!public! !
!WATerminateToolPlugin categoriesFor: #renderContentOn:!public!rendering! !

