"Filed out from Dolphin Smalltalk"!

WAHaloPlugin subclass: #WABrowserHaloPlugin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABrowserHaloPlugin guid: (GUID fromString: '{a3bd6c92-be3a-4297-91bb-98b737dd00e7}')!

WABrowserHaloPlugin comment: 'I open a browser on the component class.'!

!WABrowserHaloPlugin categoriesForClass!Unclassified! !

!WABrowserHaloPlugin methodsFor!

execute
	self open: (WABrowser fullOnClass: self root class)!

label
	^ 'Browser'!

priority
	^ 500!

tooltip
	^ 'Class Browser'! !

!WABrowserHaloPlugin categoriesForMethods!
execute!actions!public! !
label!accessing!public! !
priority!accessing!public! !
tooltip!accessing!public! !
!

