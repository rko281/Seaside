"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAUserConfigurationEditor
	instanceVariableNames: 'configuration groups parent dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUserConfigurationEditor guid: (GUID fromString: '{4a4d9ab8-3585-49a5-961a-dbbd55d21d92}')!
WAUserConfigurationEditor comment: ''!
!WAUserConfigurationEditor categoriesForClass!Seaside-Tools-Web! !
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

parent: aComponent 	parent := aComponent !

parents	^ self configuration parents!

renderButtonsOn: html	html paragraph: [		dialog 			ifTrue: [ html submitButton on: #ok of: self ].		html submitButton on: #apply of: self.		html cancelButton on: #cancel of: self ]!

renderContentOn: html	self configuration isShared		ifTrue: [ html heading: self configuration name ].	html form: [		self renderFormOn: html.		self renderButtonsOn: html ]!

renderFormOn: html	groups do: [ :each | html render: each ]! !
!WAUserConfigurationEditor categoriesFor: #apply!actions!public! !
!WAUserConfigurationEditor categoriesFor: #beComponent!accessing!public! !
!WAUserConfigurationEditor categoriesFor: #beDialog!accessing!public! !
!WAUserConfigurationEditor categoriesFor: #buildGroups!accessing!public! !
!WAUserConfigurationEditor categoriesFor: #cancel!actions!public! !
!WAUserConfigurationEditor categoriesFor: #children!hooks!public! !
!WAUserConfigurationEditor categoriesFor: #configuration!accessing!public! !
!WAUserConfigurationEditor categoriesFor: #groupedAttributes!attributes!public! !
!WAUserConfigurationEditor categoriesFor: #groups!accessing!public! !
!WAUserConfigurationEditor categoriesFor: #includesAdvanced:!accessing!public! !
!WAUserConfigurationEditor categoriesFor: #initializeOn:!initialization!public! !
!WAUserConfigurationEditor categoriesFor: #ok!actions!public! !
!WAUserConfigurationEditor categoriesFor: #parent!accessing!public! !
!WAUserConfigurationEditor categoriesFor: #parent:!accessing!public! !
!WAUserConfigurationEditor categoriesFor: #parents!accessing!public! !
!WAUserConfigurationEditor categoriesFor: #renderButtonsOn:!public!rendering! !
!WAUserConfigurationEditor categoriesFor: #renderContentOn:!public!rendering! !
!WAUserConfigurationEditor categoriesFor: #renderFormOn:!public!rendering! !

!WAUserConfigurationEditor class methodsFor!

on: aUserConfiguration	^ self basicNew initializeOn: aUserConfiguration; yourself! !
!WAUserConfigurationEditor class categoriesFor: #on:!instance creation!public! !

