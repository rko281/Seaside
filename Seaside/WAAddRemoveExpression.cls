"Filed out from Dolphin Smalltalk 7"!

WAAttributeExpression subclass: #WAAddRemoveExpression
	instanceVariableNames: 'additions removals'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAddRemoveExpression guid: (GUID fromString: '{77175506-94b9-4ec0-bca1-900dc4616968}')!
WAAddRemoveExpression comment: ''!
!WAAddRemoveExpression categoriesForClass!Seaside-Core-Configuration! !
!WAAddRemoveExpression methodsFor!

additions	^ additions!

additions: aCollection	additions := aCollection!

determineValueWithContext: aContext configuration: aConfiguration	| collection result |	collection := aConfiguration inheritedValueForContext: aContext.		collection isNil ifTrue: [ collection := aContext attribute default ].	collection isNil ifTrue: [ collection := Array new ].		result := OrderedCollection withAll: collection.	result := result reject: [ :each |		(self additions includes: each)			or: [ self removals includes: each ] ].	result addAll: self additions.		^ result asArray!

removals	^ removals!

removals: anObject	removals := anObject! !
!WAAddRemoveExpression categoriesFor: #additions!accessing!public! !
!WAAddRemoveExpression categoriesFor: #additions:!accessing!public! !
!WAAddRemoveExpression categoriesFor: #determineValueWithContext:configuration:!public!values! !
!WAAddRemoveExpression categoriesFor: #removals!accessing!public! !
!WAAddRemoveExpression categoriesFor: #removals:!accessing!public! !

