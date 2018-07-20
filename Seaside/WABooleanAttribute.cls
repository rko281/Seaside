"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WABooleanAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABooleanAttribute guid: (GUID fromString: '{b922a7c8-37e7-473b-bec9-7b2887e2fca3}')!
WABooleanAttribute comment: 'WABooleanAttribute  represents a boolean attribute. It converts between text entered on the configuration page and boolean values.'!
!WABooleanAttribute categoriesForClass!Seaside-Core-Configuration! !
!WABooleanAttribute methodsFor!

accept: aVisitor	aVisitor visitBooleanAttribute: self!

valueFromString: aString	^ aString = 'true'		ifTrue: [ true ]		ifFalse: [			aString = 'false'				 ifTrue: [ false ]				 ifFalse: [ WAConfigurationError signal: 'Invalid value for boolean attribute' ] ]! !
!WABooleanAttribute categoriesFor: #accept:!public!visiting! !
!WABooleanAttribute categoriesFor: #valueFromString:!converting!public! !

