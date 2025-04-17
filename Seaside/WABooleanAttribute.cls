"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WABooleanAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABooleanAttribute guid: (GUID fromString: '{c51f0a09-12e3-4342-900a-ad99a38a6466}')!

WABooleanAttribute comment: 'WABooleanAttribute  represents a boolean attribute. It converts between text entered on the configuration page and boolean values.'!

!WABooleanAttribute categoriesForClass!Configuration! !

!WABooleanAttribute methodsFor!

accept: aVisitor	aVisitor visitBooleanAttribute: self!

valueFromString: aString	^ aString = 'true'		ifTrue: [ true ]		ifFalse: [			aString = 'false'				 ifTrue: [ false ]				 ifFalse: [ WAConfigurationError signal: 'Invalid value for boolean attribute' ] ]! !

!WABooleanAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

