"Filed out from Dolphin Smalltalk"!

WAToolPlugin subclass: #WADeprecationToolPlugin
	instanceVariableNames: 'filter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADeprecationToolPlugin guid: (GUID fromString: '{638cbda2-1cf2-4a27-8c34-84110523a063}')!

WADeprecationToolPlugin comment: 'I display deprecation warnings.'!

!WADeprecationToolPlugin categoriesForClass!Seaside-Development-Plugins! !

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

