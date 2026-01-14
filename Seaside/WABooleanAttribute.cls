"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WABooleanAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABooleanAttribute guid: (GUID fromString: '{50f658f8-9dae-48c5-b078-c40ade6f7937}')!

WABooleanAttribute comment: 'WABooleanAttribute  represents a boolean attribute. It converts between text entered on the configuration page and boolean values.'!

!WABooleanAttribute categoriesForClass!Seaside-Core-Configuration! !

!WABooleanAttribute methodsFor!

accept: aVisitor	aVisitor visitBooleanAttribute: self!

valueFromString: aString	^ aString = 'true'		ifTrue: [ true ]		ifFalse: [			aString = 'false'				 ifTrue: [ false ]				 ifFalse: [ WAConfigurationError signal: 'Invalid value for boolean attribute' ] ]! !

!WABooleanAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

