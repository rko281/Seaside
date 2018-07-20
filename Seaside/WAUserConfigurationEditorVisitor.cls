"Filed out from Dolphin Smalltalk 7"!

WAAttributeVisitor subclass: #WAUserConfigurationEditorVisitor
	instanceVariableNames: 'configuration canvas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUserConfigurationEditorVisitor guid: (GUID fromString: '{e29cef67-fd47-4689-a24c-9d4c71fc4e50}')!
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
!WAUserConfigurationEditorVisitor categoriesFor: #configuration!accessing!public! !
!WAUserConfigurationEditorVisitor categoriesFor: #html!accessing!public! !
!WAUserConfigurationEditorVisitor categoriesFor: #initializeWithConfiguration:canvas:!initialization!public! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitBooleanAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitClassBindingAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitClassBindingCollectionAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitClassListAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitCollectionAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitListAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitNumberAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitPasswordAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitStringAttribute:!public!visiting! !
!WAUserConfigurationEditorVisitor categoriesFor: #visitUrlAttribute:!public!visiting! !

!WAUserConfigurationEditorVisitor class methodsFor!

configuration: aUserConfiguration canvas: aRenderCanvas	^ self basicNew		initializeWithConfiguration: aUserConfiguration canvas: aRenderCanvas;		yourself! !
!WAUserConfigurationEditorVisitor class categoriesFor: #configuration:canvas:!instance creation!public! !

