"Filed out from Dolphin Smalltalk 7"!

WAHaloPlugin subclass: #WAInspectorHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInspectorHaloPlugin guid: (GUID fromString: '{7d6614c7-64df-48ab-b040-4b3b31537ed6}')!
WAInspectorHaloPlugin comment: 'I open an inspector on the component class.'!
!WAInspectorHaloPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAInspectorHaloPlugin methodsFor!

execute	self open: (WAInspector current on: self root)!

isActive	^ WAInspector current notNil!

label	^ 'Inspector'!

priority	^ 600!

tooltip	^ 'Object Inspector'! !
!WAInspectorHaloPlugin categoriesFor: #execute!actions!public! !
!WAInspectorHaloPlugin categoriesFor: #isActive!public!testing! !
!WAInspectorHaloPlugin categoriesFor: #label!accessing!public! !
!WAInspectorHaloPlugin categoriesFor: #priority!accessing!public! !
!WAInspectorHaloPlugin categoriesFor: #tooltip!accessing!public! !

