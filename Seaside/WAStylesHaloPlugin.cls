"Filed out from Dolphin Smalltalk"!

WAHaloPlugin subclass: #WAStylesHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStylesHaloPlugin guid: (GUID fromString: '{77e4c42d-770e-483a-a5ca-86481f317cca}')!

WAStylesHaloPlugin comment: 'I open the style editor on the component class.'!

!WAStylesHaloPlugin categoriesForClass!Seaside-Development-Plugins! !

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

