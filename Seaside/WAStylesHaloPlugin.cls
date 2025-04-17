"Filed out from Dolphin Smalltalk"!

WAHaloPlugin subclass: #WAStylesHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStylesHaloPlugin guid: (GUID fromString: '{9f26ddf9-5b28-400e-96e9-ac3031c12ea7}')!

WAStylesHaloPlugin comment: 'I open the style editor on the component class.'!

!WAStylesHaloPlugin categoriesForClass!Plugins! !

!WAStylesHaloPlugin methodsFor!

execute	self open: (WAPluggableTool on: (WAViewer on: self root))!

label	^ 'Styles'!

priority	^ 700!

tooltip	^ 'CSS Style Editor'! !

!WAStylesHaloPlugin categoriesForMethods!
execute!actions!public! !
label!accessing!public! !
priority!accessing!public! !
tooltip!accessing!public! !
!

