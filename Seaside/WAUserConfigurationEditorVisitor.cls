"Filed out from Dolphin Smalltalk"!

WAAttributeVisitor subclass: #WAUserConfigurationEditorVisitor
	instanceVariableNames: 'configuration canvas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUserConfigurationEditorVisitor guid: (GUID fromString: '{f224b44c-ccca-4f8b-9627-8e57c3350104}')!

WAUserConfigurationEditorVisitor comment: ''!

!WAUserConfigurationEditorVisitor categoriesForClass!Seaside-Tools-Web! !

!WAUserConfigurationEditorVisitor methodsFor!

configuration	^ configuration!

html	^ canvas!

initializeWithConfiguration: aUserConfiguration canvas: aRenderCanvas	self initialize.	configuration := aUserConfiguration.	canvas := aRenderCanvas!

visitBooleanAttribute: anAttribute	self html select		list: (Array with: true with: false);		selected: (self configuration at: anAttribute key);		labels: [ :bool | anAttribute stringForValue: bool ];		callback: [ :value | self configuration takeValue: value forAttribute: anAttribute ]!

visitClassBindingAttribute: anAttribute	| options binding selected |	options := anAttribute options asArray.	binding := self configuration at: anAttribute key.	(binding notNil and: [ (options includes: binding value) not ])		ifTrue: [ options := (Array with: binding value), (options) ].	selected := binding isNil ifTrue: [ nil ] ifFalse: [ binding value ].	self html select		list: options;		selected: selected;		labels: [ :each | anAttribute stringForValue: each ];		callback: [ :each |			self configuration				takeValue: (GRPlatform current bindingOf: each)				forAttribute: anAttribute ]!

visitClassBindingCollectionAttribute: anAttribute 	| attributeCollection listSize |	attributeCollection := self configuration currentCollectionAt: anAttribute key.	attributeCollection isEmpty ifTrue: [ ^ self html text: '(none)' ].	listSize := (attributeCollection size min: 10) max: 2.	self html select		disabled;		size: listSize;		title: 'Current';		labels: [ :each |			each value value greaseString, ' [' , each key greaseString, ']' ];		list: attributeCollection!

visitClassListAttribute: anAttribute	| options value selected |	options := anAttribute options asArray.	value := self configuration at: anAttribute key.	(value notNil and: [ (options includes: value class) not ])		ifTrue: [ options := (Array with: value class), options ].	selected := value isNil ifTrue: [ nil ] ifFalse: [ value class ].	self html select		list: options;		selected: selected;		labels: [ :each | anAttribute stringForValue: each ];		callback: [ :each | self configuration takeValue: each new forAttribute: anAttribute ]!

visitCollectionAttribute: anAttribute 	| attributeCollection listSize |	attributeCollection := self configuration currentCollectionAt: anAttribute key.	attributeCollection isEmpty ifTrue: [ ^ self html text: '(none)' ].	listSize := (attributeCollection size min: 10) max: 2.	self html select		disabled;		size: listSize;		title: 'Current';		labels: [ :each | each value greaseString , ' [' , each key greaseString , ']' ];		list: attributeCollection!

visitListAttribute: anAttribute	| options value |	options := anAttribute options asArray.	value := self configuration at: anAttribute key.	(value isNil or: [ options includes: value ])		ifFalse: [ options := (Array with: value) , (options) ].	self html select		beOptional;		list: options;		selected: value;		optionalLabel: '(none)';		labels: [ :each | anAttribute stringForValue: each ];		callback: [ :each | self configuration takeValue: each forAttribute: anAttribute ]!

visitNumberAttribute: anAttribute	self html textInput		size: 5;		callback: [ :value | self configuration takeValueFromString: value forAttribute: anAttribute ];		value: (anAttribute stringForValue: (self configuration at: anAttribute key))!

visitPasswordAttribute: anAttribute	self html passwordInput 		callback: [ :value | self configuration takeValueFromString: value forAttribute: anAttribute ]!

visitStringAttribute: anAttribute	self html textInput		value: (anAttribute stringForValue: (self configuration at: anAttribute key));		callback: [ :value | self configuration takeValueFromString: value forAttribute: anAttribute ]!

visitUrlAttribute: anAttribute	self html textInput		size: 40;		callback: [ :value | self configuration takeValueFromString: value forAttribute: anAttribute ];		value: (anAttribute stringForValue: (self configuration at: anAttribute key))! !

!WAUserConfigurationEditorVisitor categoriesForMethods!
configuration!accessing!public! !
html!accessing!public! !
initializeWithConfiguration:canvas:!initialization!public! !
visitBooleanAttribute:!public!visiting! !
visitClassBindingAttribute:!public!visiting! !
visitClassBindingCollectionAttribute:!public!visiting! !
visitClassListAttribute:!public!visiting! !
visitCollectionAttribute:!public!visiting! !
visitListAttribute:!public!visiting! !
visitNumberAttribute:!public!visiting! !
visitPasswordAttribute:!public!visiting! !
visitStringAttribute:!public!visiting! !
visitUrlAttribute:!public!visiting! !
!

!WAUserConfigurationEditorVisitor class methodsFor!

configuration: aUserConfiguration canvas: aRenderCanvas	^ self basicNew		initializeWithConfiguration: aUserConfiguration canvas: aRenderCanvas;		yourself! !

!WAUserConfigurationEditorVisitor class categoriesForMethods!
configuration:canvas:!instance creation!public! !
!

