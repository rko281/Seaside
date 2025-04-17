"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAAttributeEditor
	instanceVariableNames: 'configuration group properties parent'
	classVariableNames: 'HelpTexts PropertiesCache'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAttributeEditor guid: (GUID fromString: '{cf1cfc50-93c0-425c-b319-33890f2a4377}')!

WAAttributeEditor comment: ''!

!WAAttributeEditor categoriesForClass!Unclassified! !

!WAAttributeEditor methodsFor!

collapsed	^ self propertyAt: #collapsed ifAbsent: [ false ]!

collapsed: aBoolean	^ self propertyAt: #collapsed put: aBoolean!

collapsedByDefault	^ false!

configuration	^ configuration!

configuration: anObject	configuration := anObject!

displayAdvancedAttributes	^ self propertyAt: #displayAdvanced ifAbsent: [ false ]!

displayAdvancedAttributes: aBoolean	self propertyAt: #displayAdvanced put: aBoolean!

group	^ group!

group: anObject	group := anObject.	self setCachedProperties.	self showHelp: false!

hasAdvancedAttributes	^ self propertyAt: #hasAdvanced ifAbsent: [ false ]!

hasAdvancedAttributes: aBoolean	self propertyAt: #hasAdvanced put: aBoolean!

hasAdvancedAttributesDefault	^ false!

helpEnabled	^ self propertyAt: #helpEnabled ifAbsent: [ false ]!

initialize 	super initialize.	properties := Dictionary new.	self hasAdvancedAttributes: self hasAdvancedAttributesDefault.	self displayAdvancedAttributes: false.	self collapsed: self collapsedByDefault.	self showHelp: false!

parent	^ parent!

parent: anObject	parent := anObject!

properties	^ properties!

properties: props 	properties := props!

propertyAt: aSymbol ifAbsent: absentBlock	^ properties at: aSymbol ifAbsent: absentBlock!

propertyAt: aSymbol put: anObject	properties at: aSymbol put: anObject.	group isNil ifFalse: [ self class updatePropertiesCacheFor: self ]!

renderActionsOn: html	html span		class: 'action';		with: [			self hasAdvancedAttributes ifTrue: [				html anchor					class: 'minus' if: self displayAdvancedAttributes;					class: 'plus' if: self displayAdvancedAttributes not;					title: (self displayAdvancedAttributes						ifTrue: [ 'Hide advanced attributes' ]						ifFalse: [ 'Show advanced attributes' ]);					callback: [ self toggleAdvanced ].				html space ].			html anchor				class: 'down' if: self collapsed;				class: 'up' if: self collapsed not;				title: (self collapsed					ifTrue: [ 'Expand' ]					 ifFalse: [ 'Collapse' ]);				callback: [ self toggleVisbility ].			(self class helpTextFor: group) isNil ifFalse: [				html space.				html anchor					class: 'help';					title: (self showHelp						ifTrue: [ 'Hide Help' ]						ifFalse: [ 'Show Help' ]);					callback: [ self toggleHelp ] ] ]!

renderConfigurationOn: html	self subclassResponsibility!

renderContentOn: html	self		renderGroup: [ self renderConfigurationOn: html ]		named: (self labelForSelector: group)		on: html!

renderGroup: aBlock named: aName on: html	html div class: 'group';		 with: [			html div				class: 'groupTitle';				with: [					html label: aName.					self renderActionsOn: html ].			self collapsed 				ifFalse: [					self showHelp 						ifTrue: [							html div								class: 'help';								with: [									html code: (self class helpTextFor: group) ] ]						ifFalse: [							html div								class: 'groupContent';								with: aBlock ] ] ]!

setCachedProperties	| props | 	props := self class propertiesCache at: group ifAbsent: [ nil ].	props isNil ifFalse: [		self properties: props.		self showHelp: false ]!

show: aComponent onAnswer: aBlock	^ parent isNil		ifFalse: [ parent parent show: aComponent onAnswer: aBlock ]		ifTrue: [ super show: aComponent onAnswer: aBlock ]!

showHelp	^ self propertyAt: #showHelp ifAbsent: [ false ]!

showHelp: aBoolean	^ self propertyAt: #showHelp put: aBoolean!

toggleAdvanced	self displayAdvancedAttributes: self displayAdvancedAttributes not.	self displayAdvancedAttributes		ifTrue: [ self collapsed: false ]!

toggleHelp	self showHelp: self showHelp not.	self showHelp		ifTrue: [ self collapsed: false ]!

toggleVisbility	self collapsed: self collapsed not.	self collapsed		ifTrue: [ self showHelp: false ]! !

!WAAttributeEditor categoriesForMethods!
collapsed!public!settings! !
collapsed:!public!settings! !
collapsedByDefault!accessing!public! !
configuration!accessing!public! !
configuration:!accessing!public! !
displayAdvancedAttributes!public!settings! !
displayAdvancedAttributes:!public!settings! !
group!accessing!public! !
group:!accessing!public! !
hasAdvancedAttributes!public!settings! !
hasAdvancedAttributes:!public!settings! !
hasAdvancedAttributesDefault!accessing!public! !
helpEnabled!public!settings! !
initialize!initialization!public! !
parent!accessing!public! !
parent:!accessing!public! !
properties!accessing!public! !
properties:!accessing!public! !
propertyAt:ifAbsent:!accessing!public! !
propertyAt:put:!accessing!public! !
renderActionsOn:!public!rendering! !
renderConfigurationOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderGroup:named:on:!public!rendering! !
setCachedProperties!public!settings! !
show:onAnswer:!delegation!public! !
showHelp!public!settings! !
showHelp:!public!settings! !
toggleAdvanced!actions!public! !
toggleHelp!actions!public! !
toggleVisbility!actions!public! !
!

!WAAttributeEditor class methodsFor!

helpTextFor: group	^ self helpTexts at: group ifAbsent: [ nil ]!

helpTexts	HelpTexts ifNil: [ self initHelpTexts ].	^ HelpTexts!

initHelpTexts	HelpTexts := Dictionary new.	HelpTexts at: #inheritedConfiguration put: 'Modify references to other configurations.	- You can add user or global configs	- Only shared configs (marked with *) can be configured'.	^ HelpTexts!

propertiesCache	^ PropertiesCache ifNil: [ PropertiesCache := Dictionary new ]!

updatePropertiesCacheFor: anEditor	 self propertiesCache at: anEditor group put: anEditor properties! !

!WAAttributeEditor class categoriesForMethods!
helpTextFor:!accessing!public! !
helpTexts!accessing!public! !
initHelpTexts!accessing!public! !
propertiesCache!accessing!public! !
updatePropertiesCacheFor:!accessing!public! !
!

