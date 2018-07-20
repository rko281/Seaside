"Filed out from Dolphin Smalltalk 7"!

WAAttributeExpression subclass: #WAValueExpression
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValueExpression guid: (GUID fromString: '{d20a6541-165e-4e9a-9caf-5abb424c7849}')!
WAValueExpression comment: ''!
!WAValueExpression categoriesForClass!Seaside-Core-Configuration! !
!WAValueExpression methodsFor!

determineValueWithContext: aContext configuration: aConfiguration	^ self value!

value	^ value!

value: anObject	value := anObject! !
!WAValueExpression categoriesFor: #determineValueWithContext:configuration:!public!values! !
!WAValueExpression categoriesFor: #value!accessing!public! !
!WAValueExpression categoriesFor: #value:!accessing!public! !

