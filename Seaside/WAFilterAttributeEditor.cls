"Filed out from Dolphin Smalltalk"!

WAAttributeEditor subclass: #WAFilterAttributeEditor
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFilterAttributeEditor guid: (GUID fromString: '{8c1a3853-5219-431e-9de7-975f289fe248}')!

WAFilterAttributeEditor comment: ''!

!WAFilterAttributeEditor categoriesForClass!Seaside-Tools-Web! !

!WAFilterAttributeEditor methodsFor!

addFilterForClass: aFilterClass	aFilterClass isNil		ifFalse: [ self handler addFilter: aFilterClass new ]!

filters	^ handler filters!

handler	^ handler!

handler: anObject	handler := anObject!

potentialFilters	^ WAConfiguredRequestFilter allSubclasses!

removeFilter: aFilter	self handler removeFilter: aFilter!

renderConfigurationOn: html	| filters |	filters := self filters.	html form: [		self renderPossibleFiltersOn: html.		html table			cellspacing: 0;			cellpadding: 0;			with: [				filters do: [ :each |					html tableRow: [						html tableData: each class name.						html tableData: [							(each isKindOf: WAConfiguredRequestFilter)								ifTrue: [									html anchor										callback: [ self show: each configurationComponent ];										with: 'Configure' ].								html space.								html anchor									callback: [ self removeFilter: each ];									with: 'Remove' ] ] ] ] ]!

renderPossibleFiltersOn: html 	| selectedFilter filters |	filters := self potentialFilters.	html label: 'Possible filters: '.	html break.	selectedFilter := WAValueHolder new.	html select		list: filters;		class: 'fix';		labels: [ :each | each name ];		callback: [ :value | selectedFilter contents: value ].	html space.	html anchor			class: 'large';			title: 'Add new filter';			onClick: 'return submitForm(this)';			callback: [ self addFilterForClass: selectedFilter contents ];				with: 'Add'! !

!WAFilterAttributeEditor categoriesForMethods!
addFilterForClass:!actions!public! !
filters!accessing!public! !
handler!accessing!public! !
handler:!accessing!public! !
potentialFilters!accessing!public! !
removeFilter:!actions!public! !
renderConfigurationOn:!public!rendering! !
renderPossibleFiltersOn:!public!rendering! !
!

