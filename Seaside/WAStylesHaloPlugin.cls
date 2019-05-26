"Filed out from Dolphin Smalltalk 7"!

WAHaloPlugin subclass: #WAStylesHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStylesHaloPlugin guid: (GUID fromString: '{b013ad3e-f2a3-4219-89c2-0139e41c16ff}')!
WAStylesHaloPlugin comment: 'I open the style editor on the component class.'!
!WAStylesHaloPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAStylesHaloPlugin methodsFor!

execute	self open: (WAPluggableTool on: (WAViewer on: self root))!

label	^ 'Styles'!

priority	^ 700!

tooltip	^ 'CSS Style Editor'! !
!WAStylesHaloPlugin categoriesFor: #execute!actions!public! !
!WAStylesHaloPlugin categoriesFor: #label!accessing!public! !
!WAStylesHaloPlugin categoriesFor: #priority!accessing!public! !
!WAStylesHaloPlugin categoriesFor: #tooltip!accessing!public! !

