"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WATerminateToolPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATerminateToolPlugin guid: (GUID fromString: '{07324c79-dcfa-4cfb-b38c-b271d63c08b9}')!
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

