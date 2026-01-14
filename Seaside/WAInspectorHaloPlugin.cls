"Filed out from Dolphin Smalltalk"!

WAHaloPlugin subclass: #WAInspectorHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInspectorHaloPlugin guid: (GUID fromString: '{da8a1553-3ea5-4c1e-a766-cdfc7fb60887}')!

WAInspectorHaloPlugin comment: 'I open an inspector on the component class.'!

!WAInspectorHaloPlugin categoriesForClass!Seaside-Development-Plugins! !

!WAInspectorHaloPlugin methodsFor!

execute	self open: (WAInspector current on: self root)!

isActive	^ WAInspector current notNil!

label	^ 'Inspector'!

priority	^ 600!

tooltip	^ 'Object Inspector'! !

!WAInspectorHaloPlugin categoriesForMethods!
execute!actions!public! !
isActive!public!testing! !
label!accessing!public! !
priority!accessing!public! !
tooltip!accessing!public! !
!

