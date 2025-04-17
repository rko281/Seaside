"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WADeprecationToolPlugin
	instanceVariableNames: 'filter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADeprecationToolPlugin guid: (GUID fromString: '{369e4d40-5f16-48dd-93b1-587c7c607a1c}')!

WADeprecationToolPlugin comment: 'I display deprecation warnings.'!

!WADeprecationToolPlugin categoriesForClass!Plugins! !

!WADeprecationToolPlugin methodsFor!

execute	self open: (WADeprecation on: filter)!

initializeRequestor: aRequestorObject	super initializeRequestor: aRequestorObject.	filter := self session filters		detect: [ :each | each isKindOf: WADeprecatedToolFilter ]		ifNone: [ self session addFilter: WADeprecatedToolFilter new ]!

isActive	^ filter notifications notEmpty!

label	^ 'Deprecated (' , filter notifications size printString , ')'!

priority	^ 700! !

!WADeprecationToolPlugin categoriesForMethods!
execute!actions!public! !
initializeRequestor:!initialization!public! !
isActive!public!testing! !
label!accessing!public! !
priority!accessing!public! !
!

