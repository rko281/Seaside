"Filed out from Dolphin Smalltalk"!

WAAttributeEditor subclass: #WAConfigAttributeEditor
	instanceVariableNames: 'attributes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigAttributeEditor guid: (GUID fromString: '{1c7c5ae6-683a-4abd-ba9a-ec89d77a4839}')!

WAConfigAttributeEditor comment: ''!

!WAConfigAttributeEditor categoriesForClass!Seaside-Tools-Web! !

!WAConfigAttributeEditor methodsFor!

attributes	^ attributes!

attributes: anObject	attributes := anObject!

canClear	^ group ~~ #authentication!

clearAttribute: anAttribute	self configuration removeExpressionAt: anAttribute key!

configureCollectionAttribute: anAttribute	self show: (anAttribute attributeEditor new configuration: configuration; attribute: anAttribute; yourself)!

hasLocalValueForAttribute: anAttribute	^ self configuration hasExpressionAt: anAttribute key!

inheritedValueAndSourceAt: aSymbol do: aBlock	self configuration ancestorsDo: [ :each |		each expressionAt: aSymbol ifPresent: [ :exp |			^ aBlock				value: (each at: aSymbol)				value: each ] ]!

isCollectionAttribute: anAttribute	^ anAttribute isCollectionAttribute!

modifyCollectionAttribute: anAttribute	self configuration at: anAttribute key addAll: #() removeAll: #()!

overrideAttribute: anAttribute	self configuration		takeValue: (self configuration at: anAttribute key)		forAttribute: anAttribute!

renderActionsForAttribute: anAttribute on: html	html tableData: [		| wasInherited |		wasInherited := false.		self inheritedValueAndSourceAt: anAttribute key do: [ :value :source |			wasInherited ifFalse: [				(self hasLocalValueForAttribute: anAttribute)					ifTrue: [						html anchor							onClick: 'return submitForm(this)';							title: 'revert to ' , value printString , ', overriden from ', source name;							callback: [ self clearAttribute: anAttribute ]; 							with: 'Revert' ]					ifFalse: [						html anchor							onClick: 'return submitForm(this)';							title: 'inherited from ', source name;							callback: [ self overrideAttribute: anAttribute ]; 							with: 'Override'.						(self isCollectionAttribute: anAttribute) ifTrue: [							html text: ' '.							html anchor								onClick: 'return submitForm(this)';								callback: [ self modifyCollectionAttribute: anAttribute ];								with: 'Modify' ] ].			wasInherited := true ] ].		wasInherited ifFalse: [			(self hasLocalValueForAttribute: anAttribute)				ifTrue: [					self canClear						ifTrue: [							html anchor								onClick: 'return submitForm(this)';								callback: [ self clearAttribute: anAttribute ];								with: 'Clear' ] ]				ifFalse: [					anAttribute default isNil						ifTrue: [							html span								class: 'unspecified';								with: '(unspecified)' ]						ifFalse: [							html anchor								onClick: 'return submitForm(this)';								title: 'inherited from attribute default';								callback: [ self overrideAttribute: anAttribute ]; 								with: 'Override'.							(self isCollectionAttribute: anAttribute) ifTrue: [								html text: ' '.								html anchor									onClick: 'return submitForm(this)';									callback: [ self modifyCollectionAttribute: anAttribute ];									with: 'Modify' ] ] ] ] ]!

renderAttribute: anAttribute on: html	[ (anAttribute isAdvanced not or: [ self displayAdvancedAttributes ])		ifTrue: [			html tableRow: [				html tableHeading: [					html label						title: anAttribute comment;						with: anAttribute label ].				html tableData: [					(self isCollectionAttribute: anAttribute)						ifTrue: [							self renderCollectionFieldForAttribute: anAttribute on: html ]						ifFalse: [							self renderFieldForAttribute: anAttribute on: html ] ] ] ] ] on:  WAAttributeNotFound do: [ :ex | html text: ex ]!

renderCollectionFieldForAttribute: anAttribute on: html 	self visitAttribute: anAttribute on: html.	html tableData:  [		html anchor			onClick: 'return submitForm(this)';			title: 'Configure collection attribute';			callback: [ self configureCollectionAttribute: anAttribute ];			with: 'Configure' ]!

renderConfigurationOn: html	html table: [		attributes do: [ :attribute |			self renderAttribute: attribute on: html ] ]!

renderFieldForAttribute: anAttribute on: html 	(self configuration at: anAttribute key) isNil 		ifTrue:  [			self 				visitAttribute: anAttribute				on: html ]		ifFalse: [			(self hasLocalValueForAttribute: anAttribute) 				ifTrue:  [					self 						visitAttribute: anAttribute						on: html ]				ifFalse: [					self 						renderInheritedAttribute: anAttribute						on: html ] ].	self 		renderActionsForAttribute: anAttribute		on: html!

renderInheritedAttribute: anAttribute on: html 	html text: (anAttribute stringForValue: (self configuration at: anAttribute key))!

visitAttribute: anAttribute on: html 	(WAUserConfigurationEditorVisitor 		configuration: self configuration		canvas: html) start: anAttribute! !

!WAConfigAttributeEditor categoriesForMethods!
attributes!accessing!public! !
attributes:!accessing!public! !
canClear!public!testing! !
clearAttribute:!actions!public! !
configureCollectionAttribute:!public!rendering! !
hasLocalValueForAttribute:!private! !
inheritedValueAndSourceAt:do:!private! !
isCollectionAttribute:!private! !
modifyCollectionAttribute:!actions!public! !
overrideAttribute:!actions!public! !
renderActionsForAttribute:on:!public!rendering! !
renderAttribute:on:!public!rendering! !
renderCollectionFieldForAttribute:on:!public!rendering! !
renderConfigurationOn:!public!rendering! !
renderFieldForAttribute:on:!public!rendering! !
renderInheritedAttribute:on:!public!rendering! !
visitAttribute:on:!public!rendering! !
!

