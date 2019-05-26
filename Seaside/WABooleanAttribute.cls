"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WABooleanAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABooleanAttribute guid: (GUID fromString: '{c0ec618d-e57e-4df9-b7ac-e837f6ed9b29}')!
WABooleanAttribute comment: 'WABooleanAttribute  represents a boolean attribute. It converts between text entered on the configuration page and boolean values.'!
!WABooleanAttribute categoriesForClass!Seaside-Core-Configuration! !
!WABooleanAttribute methodsFor!

accept: aVisitor	aVisitor visitBooleanAttribute: self!

valueFromString: aString	^ aString = 'true'		ifTrue: [ true ]		ifFalse: [			aString = 'false'				 ifTrue: [ false ]				 ifFalse: [ WAConfigurationError signal: 'Invalid value for boolean attribute' ] ]! !
!WABooleanAttribute categoriesFor: #accept:!public!visiting! !
!WABooleanAttribute categoriesFor: #valueFromString:!converting!public! !

