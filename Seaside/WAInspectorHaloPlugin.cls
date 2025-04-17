"Filed out from Dolphin Smalltalk"!

WAHaloPlugin subclass: #WAInspectorHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInspectorHaloPlugin guid: (GUID fromString: '{dff112b3-138f-46c2-9501-6debf81caf2d}')!

WAInspectorHaloPlugin comment: 'I open an inspector on the component class.'!

!WAInspectorHaloPlugin categoriesForClass!Plugins! !

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

