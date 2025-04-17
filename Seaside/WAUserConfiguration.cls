"Filed out from Dolphin Smalltalk"!

WAConfiguration subclass: #WAUserConfiguration
	instanceVariableNames: 'expressions parents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUserConfiguration guid: (GUID fromString: '{ce3d867a-c248-426e-bb02-2b5c2518185f}')!

WAUserConfiguration comment: 'WAUserConfiguration is a composite of configurations.  This composite of configurations is stored in the field "parents". WAUserConfiguration provides methods to dynamically provide non-default values for attributes. WAUserConfiguration inherits attributes and values defined in its ancestors. If WAUserConfiguration does not have a value for an attribute it will search its ancestors for a value, stopping when it finds a value.An instance of WAUserConfiguration is the first configuration added to a Seaside application (WAApplication). All other configurations added to the application are added as ancestors of this instance. When a value for an attribute is set either by the standard Seaside component configuration page or in code the value is added to the "values" dictionary in WAUserConfiguration.Instance Variables:	parents	<Collection of: WAConfiguration>	 hierarchy of configurations defining all attributes for this instance of WAUserConfiguration	values	<Dictionary>	the dictionary key is an attribute key, dictionary value is value of that attribute '!

!WAUserConfiguration categoriesForClass!Configuration! !

!WAUserConfiguration methodsFor!

addParent: aConfiguration	(self parents includes: aConfiguration)		ifTrue: [ ^ aConfiguration ].	(self canAddParent: aConfiguration) 		ifTrue: [ self clearSearchContexts. parents add: aConfiguration ]		ifFalse: [ WAConfigurationError signal: 'Cannot add this configuration as a parent. Would this cause a circular ancestry graph?' ].	^ aConfiguration!

at: aSymbol addAll: aCollection	^ self at: aSymbol addAll: aCollection removeAll: #()!

at: aSymbol addAll: additions removeAll: removals	^ self		storeExpression:			((WAAddRemoveExpression key: aSymbol)				additions: additions;				removals: removals;				yourself)		forAttribute: (self attributeAt: aSymbol)!

at: aSymbol put: anObject	"It would be faster to simply add the value to the dictionary and	implement #takeValue:forAttribute: in terms of this method, but	config options are set only rarely and this ensures you are setting	a value for an attribute that actually exists."	^ self takeValue: anObject forAttribute: (self attributeAt: aSymbol)!

at: aSymbol putClass: aClass	^ self at: aSymbol put: (GRPlatform current bindingOf: aClass)!

canAddParent: aConfiguration 	^ (aConfiguration = self or: [ aConfiguration inheritsFrom: self ]) not!

expressionAt: aSymbol ifAbsent: errorBlock	^ expressions at: aSymbol ifAbsent: errorBlock!

initialize	super initialize.	expressions := Dictionary new.	parents := OrderedCollection new!

localAttributeAt: aSymbol ifAbsent: absentBlock	^ absentBlock value!

localAttributesDo: aBlock	"we have no local attributes -- do nothing"!

moveParentDown: aConfiguration 	| index |	self clearSearchContexts.	index := parents indexOf: aConfiguration ifAbsent: [ ^ self ].	index < parents size ifTrue: [ parents swap: index with: index + 1 ]!

moveParentUp: aConfiguration 	| index |	self clearSearchContexts.	index := parents indexOf: aConfiguration ifAbsent: [ ^ self ].	index > 1 ifTrue: [ parents swap: index with: index - 1 ]!

parents	^ parents!

postCopy	super postCopy.	expressions := expressions copy.	parents := parents copy!

removeExpressionAt: aSymbol	^ self removeExpressionAt: aSymbol ifAbsent: [ nil ]!

removeExpressionAt: aSymbol ifAbsent: aBlock	self clearSearchContexts.	^ expressions removeKey: aSymbol ifAbsent: aBlock!

removeParent: aConfiguration 	self clearSearchContexts.	parents 		remove: aConfiguration		ifAbsent: [ ]!

storeExpression: anAttributeExpression forAttribute: anAttribute	self clearSearchContexts.	^ expressions at: anAttribute key put: anAttributeExpression!

takeValue: anObject forAttribute: anAttribute	^ anObject isNil ifFalse: [		self			storeExpression:				((WAValueExpression key: anAttribute key)					value: anObject;					yourself)			forAttribute: anAttribute ]!

takeValueFromString: aString forAttribute: anAttribute	^ self takeValue: (anAttribute valueFromString: aString) forAttribute: anAttribute! !

!WAUserConfiguration categoriesForMethods!
addParent:!ancestry!public! !
at:addAll:!public!values! !
at:addAll:removeAll:!public!values! !
at:put:!public!values! !
at:putClass:!public!values! !
canAddParent:!ancestry!public! !
expressionAt:ifAbsent:!public!values! !
initialize!initialization!public! !
localAttributeAt:ifAbsent:!attributes!public! !
localAttributesDo:!attributes!public! !
moveParentDown:!ancestry!public! !
moveParentUp:!ancestry!public! !
parents!ancestry!public! !
postCopy!copying!public! !
removeExpressionAt:!public!values! !
removeExpressionAt:ifAbsent:!public!values! !
removeParent:!ancestry!public! !
storeExpression:forAttribute:!public!values! !
takeValue:forAttribute:!public!values! !
takeValueFromString:forAttribute:!public!values! !
!

