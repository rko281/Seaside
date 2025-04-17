"Filed out from Dolphin Smalltalk"!

WAAttributeExpression subclass: #WAAddRemoveExpression
	instanceVariableNames: 'additions removals'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAddRemoveExpression guid: (GUID fromString: '{3a4742d4-b025-4862-ba17-9e3ab8e13aef}')!

WAAddRemoveExpression comment: ''!

!WAAddRemoveExpression categoriesForClass!Configuration! !

!WAAddRemoveExpression methodsFor!

additions	^ additions!

additions: aCollection	additions := aCollection!

determineValueWithContext: aContext configuration: aConfiguration	| collection result |	collection := aConfiguration inheritedValueForContext: aContext.		collection isNil ifTrue: [ collection := aContext attribute default ].	collection isNil ifTrue: [ collection := Array new ].		result := OrderedCollection withAll: collection.	result := result reject: [ :each |		(self additions includes: each)			or: [ self removals includes: each ] ].	result addAll: self additions.		^ result asArray!

removals	^ removals!

removals: anObject	removals := anObject! !

!WAAddRemoveExpression categoriesForMethods!
additions!accessing!public! !
additions:!accessing!public! !
determineValueWithContext:configuration:!public!values! !
removals!accessing!public! !
removals:!accessing!public! !
!

