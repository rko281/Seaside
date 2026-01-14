"Filed out from Dolphin Smalltalk"!

WAInspector subclass: #WADolphinInspector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADolphinInspector guid: (GUID fromString: '{cd12d45e-f5b3-4a16-adc3-31b59b7feb08}')!

WADolphinInspector comment: 'Previous implementation of WASqueakInspector'!

!WADolphinInspector categoriesForClass!Unclassified! !

!WADolphinInspector methodsFor!

doIt
	| result |
	result := super doIt.
	selected ifNil: [ ^ result ].
	^ selected isNumber
		ifTrue: [ self object at: selected put: result ]
		ifFalse: [ self object instVarAt: (self object class indexOfInstVar: selected) put: result ]!

evaluate
	| result |
	result := self object basicClass compilerClass 
		compileForEvaluation: input asString
				in: self object basicClass
				evaluationPools: #()
				logged: true
				flags: 512. "Interactive"
	^result ifNotNil: [result method value: self object]!

fieldsFor: anObject
	| f inspector |
	inspector := self nativeInspectorOn: anObject.
	f := OrderedCollection new.
	(inspector headerList collect: [:anAssociation | anAssociation key]), inspector getFieldList
		keysAndValuesDo: [:eachKey :eachValue | f add: eachValue -> (inspector variableAtIndex: eachKey)].
	^f!

nativeInspectorOn: anObject

	^(BasicInspector new)
		model: anObject asValue;
		yourself! !

!WADolphinInspector categoriesForMethods!
doIt!actions!public! !
evaluate!actions!public! !
fieldsFor:!private! !
nativeInspectorOn:!public! !
!

!WADolphinInspector class methodsFor!

initialize
	self select!

openNativeInspectorOn: anObject
	anObject inspect!

unload
	self unselect! !

!WADolphinInspector class categoriesForMethods!
initialize!class initialization!public! !
openNativeInspectorOn:!inspecting!public! !
unload!class initialization!public! !
!

