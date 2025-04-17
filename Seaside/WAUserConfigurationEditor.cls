"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAUserConfigurationEditor
	instanceVariableNames: 'configuration groups parent dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUserConfigurationEditor guid: (GUID fromString: '{c968736e-6372-44c4-8aac-f6aae31eb251}')!

WAUserConfigurationEditor comment: ''!

!WAUserConfigurationEditor categoriesForClass!Unclassified! !

!WAUserConfigurationEditor methodsFor!

apply!

beComponent	dialog := false!

beDialog	dialog := true!

buildGroups	groups := OrderedCollection new.	groups add: (WAAncestryAttributeEditor new configuration: configuration; group: #inheritedConfiguration; parent: self; yourself).	groups addAll:		(self groupedAttributes collect: [ :association | 			WAConfigAttributeEditor new				configuration: configuration;				attributes: association value;				group: association key;				parent: self;				hasAdvancedAttributes: (self includesAdvanced: association value);				yourself ])!

cancel	dialog ifTrue: [ self answer: nil ]!

children	^ groups!

configuration	^ configuration!

groupedAttributes	| groupsDict attributes |	groupsDict := Dictionary new.	attributes := SortedCollection sortBlock: [ :a :b | a key <= b key ].	self configuration allAttributes do: [ :each |		(groupsDict			at: each group			ifAbsentPut: [ SortedCollection sortBlock: [ :a :b | a key <= b key ] ])				add: each ].	groupsDict associationsDo: [ :association | attributes add: association ].	^ attributes!

groups	^ groups!

includesAdvanced: attributes	^ attributes anySatisfy: [ :each | each isAdvanced ]!

initializeOn: aUserConfiguration	self initialize.	dialog := true.	WASystemConfiguration clearAllDescriptions.	configuration := aUserConfiguration.	self buildGroups!

ok	dialog		ifTrue: [ self answer ]!

parent	^ parent ifNil: [ ^ self ]!

parent: aComponent 	parent := aComponent!

parents	^ self configuration parents!

renderButtonsOn: html	html paragraph: [		dialog 			ifTrue: [ html submitButton on: #ok of: self ].		html submitButton on: #apply of: self.		html cancelButton on: #cancel of: self ]!

renderContentOn: html	self configuration isShared		ifTrue: [ html heading: self configuration name ].	html form: [		self renderFormOn: html.		self renderButtonsOn: html ]!

renderFormOn: html	groups do: [ :each | html render: each ]! !

!WAUserConfigurationEditor categoriesForMethods!
apply!actions!public! !
beComponent!accessing!public! !
beDialog!accessing!public! !
buildGroups!accessing!public! !
cancel!actions!public! !
children!hooks!public! !
configuration!accessing!public! !
groupedAttributes!attributes!public! !
groups!accessing!public! !
includesAdvanced:!accessing!public! !
initializeOn:!initialization!public! !
ok!actions!public! !
parent!accessing!public! !
parent:!accessing!public! !
parents!accessing!public! !
renderButtonsOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderFormOn:!public!rendering! !
!

!WAUserConfigurationEditor class methodsFor!

on: aUserConfiguration	^ self basicNew initializeOn: aUserConfiguration; yourself! !

!WAUserConfigurationEditor class categoriesForMethods!
on:!instance creation!public! !
!

