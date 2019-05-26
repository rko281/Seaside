"Filed out from Dolphin Smalltalk 7"!

WAAttributeExpression subclass: #WAValueExpression
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValueExpression guid: (GUID fromString: '{c3cea142-b732-404a-8b56-a6e131313885}')!
WAValueExpression comment: ''!
!WAValueExpression categoriesForClass!Seaside-Core-Configuration! !
!WAValueExpression methodsFor!

determineValueWithContext: aContext configuration: aConfiguration	^ self value!

value	^ value!

value: anObject	value := anObject! !
!WAValueExpression categoriesFor: #determineValueWithContext:configuration:!public!values! !
!WAValueExpression categoriesFor: #value!accessing!public! !
!WAValueExpression categoriesFor: #value:!accessing!public! !

