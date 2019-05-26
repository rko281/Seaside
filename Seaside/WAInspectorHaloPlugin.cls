"Filed out from Dolphin Smalltalk 7"!

WAHaloPlugin subclass: #WAInspectorHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInspectorHaloPlugin guid: (GUID fromString: '{fffb7206-8074-49ca-9d2d-7ebb93fd79a8}')!
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

