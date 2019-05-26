"Filed out from Dolphin Smalltalk 7"!

WAToolPlugin subclass: #WADeprecationToolPlugin
	instanceVariableNames: 'filter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeprecationToolPlugin guid: (GUID fromString: '{ad07c17b-dc47-4580-9d23-4646c5afc6f1}')!
WADeprecationToolPlugin comment: 'I display deprecation warnings.'!
!WADeprecationToolPlugin categoriesForClass!Seaside-Development-Plugins! !
!WADeprecationToolPlugin methodsFor!

execute	self open: (WADeprecation on: filter)!

initializeRequestor: aRequestorObject	super initializeRequestor: aRequestorObject.	filter := self session filters		detect: [ :each | each isKindOf: WADeprecatedToolFilter ]		ifNone: [ self session addFilter: WADeprecatedToolFilter new ]!

isActive	^ filter notifications notEmpty!

label	^ 'Deprecated (' , filter notifications size printString , ')'!

priority	^ 700! !
!WADeprecationToolPlugin categoriesFor: #execute!actions!public! !
!WADeprecationToolPlugin categoriesFor: #initializeRequestor:!initialization!public! !
!WADeprecationToolPlugin categoriesFor: #isActive!public!testing! !
!WADeprecationToolPlugin categoriesFor: #label!accessing!public! !
!WADeprecationToolPlugin categoriesFor: #priority!accessing!public! !

