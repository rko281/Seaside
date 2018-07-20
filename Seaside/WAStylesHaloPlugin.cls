"Filed out from Dolphin Smalltalk 7"!

WAHaloPlugin subclass: #WAStylesHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStylesHaloPlugin guid: (GUID fromString: '{7d349439-803b-4d4b-ad1d-ff3f210e9b81}')!
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

