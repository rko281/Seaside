﻿"Filed out from Dolphin Smalltalk"!

WAAttributeEditor subclass: #WAAncestryAttributeEditor
	instanceVariableNames: 'selectedConfiguration'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAncestryAttributeEditor guid: (GUID fromString: '{42489f1e-1055-4879-aee6-87e86810c22e}')!

WAAncestryAttributeEditor comment: ''!

!WAAncestryAttributeEditor categoriesForClass!Unclassified! !

!WAAncestryAttributeEditor methodsFor!

addParent: aParent 	aParent isNil ifFalse: [		self configuration addParent: aParent.		(aParent isKindOf: WAAuthConfiguration) ifTrue: [			self myApplication 				preferenceAt: #login put: 'admin';				preferenceAt: #passwordHash	put: (GRPlatform current secureHashFor: 'seaside');				addFilter: WAAuthenticationFilter new ].		self parent buildGroups.		selectedConfiguration contents: aParent ]!

initialize 	super initialize.	selectedConfiguration := WAValueHolder new!

myApplication	^ self parent parent handler!

openConfiguration: aConfiguration 	aConfiguration isNil ifFalse: [		aConfiguration isShared ifTrue: [			self show: aConfiguration configurationComponent ] ]!

potentialParents	| configurations |	configurations := WASystemConfiguration allSubclasses collect: [ :each | each instance ].	configurations addAll: WASharedConfiguration configurations.	^ configurations select: [ :each | 		(self configuration canAddParent: each)			and: [ (self configuration inheritsFrom: each) not ] ]!

removeConfiguration: aConfiguration	| myApplication authFilter |	(aConfiguration isKindOf: WAAuthConfiguration) ifTrue: [		myApplication := self myApplication.		authFilter := myApplication filters detect: [ :each | each isKindOf: WAAuthenticationFilter ] ifNone: [ nil ].		authFilter isNil ifFalse: [			myApplication 				preferenceAt: #login				put: nil.			myApplication 				preferenceAt: #passwordHash				put: nil.			myApplication removeFilter: authFilter ] ].	self configuration removeParent: aConfiguration.	self parent buildGroups!

renderAncestryListOn: html	html paragraph.	html label: 'Assigned parents: '.	html table: [		html tableRow: [			html tableData				verticalAlign: 'top';				with: [					html select						size: 5;						selected: selectedConfiguration contents;						class: 'fix';						labels: [ :each | each isShared ifTrue: [ '(*) ' , each name ] ifFalse: [ each name ] ];						list: self configuration parents;						callback: [ :value | selectedConfiguration contents: value ] ].			html tableData: [				html anchor					title: 'Move parent up';					onClick: 'return submitForm(this)';					callback: [ self configuration moveParentUp: selectedConfiguration contents ];					with: [ html html: '&uarr;' ].				html break; break.				html anchor					title: 'Remove parent configuration';					onClick: 'return submitForm(this)';					callback: [ self removeConfiguration: selectedConfiguration contents ];					with: 'X'.				html break; break.				html anchor					title: 'Move parent down';					onClick: 'return submitForm(this)';					callback: [ self configuration moveParentDown: selectedConfiguration contents ];					with: [ html html: '&darr;' ] ] ] ].	html break.	html anchor		class: 'large';		title: 'Configure shared parent';		onClick: 'return submitForm(this)';		callback: [ self openConfiguration: selectedConfiguration contents ];		with: 'Configure'!

renderConfigurationOn: html	self renderParentSelectorOn: html.	self renderAncestryListOn: html!

renderParentSelectorOn: html 	| selectedParent parents |	parents := self potentialParents.	html label: 'Possible parents: '.	html break.	selectedParent := WAValueHolder new.	html select		list: parents;		class: 'fix';		labels: [ :each | each name ];		callback: [ :value | selectedParent contents: value ].	html space.	html anchor		class: 'large';		title: 'Add new parent configuration';		onClick: 'return submitForm(this)';		callback: [ self addParent: selectedParent contents ];			with: 'Add'! !

!WAAncestryAttributeEditor categoriesForMethods!
addParent:!actions!public! !
initialize!initialization!public! !
myApplication!accessing!public! !
openConfiguration:!actions!public! !
potentialParents!public!rendering! !
removeConfiguration:!actions!public! !
renderAncestryListOn:!public!rendering! !
renderConfigurationOn:!public!rendering! !
renderParentSelectorOn:!public!rendering! !
!

