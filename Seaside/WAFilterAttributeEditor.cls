"Filed out from Dolphin Smalltalk 7"!

WAAttributeEditor subclass: #WAFilterAttributeEditor
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFilterAttributeEditor guid: (GUID fromString: '{01f83284-4154-472c-9016-781bad4edee2}')!
WAFilterAttributeEditor comment: ''!
!WAFilterAttributeEditor categoriesForClass!Seaside-Tools-Web! !
!WAFilterAttributeEditor methodsFor!

addFilterForClass: aFilterClass	aFilterClass isNil		ifFalse: [ self handler addFilter: aFilterClass new ]!

filters	^ handler filters!

handler	^ handler!

handler: anObject	handler := anObject!

potentialFilters	^ WAConfiguredRequestFilter allSubclasses!

removeFilter: aFilter	self handler removeFilter: aFilter!

renderConfigurationOn: html	| filters |	filters := self filters.	html form: [		self renderPossibleFiltersOn: html.		html table			cellspacing: 0;			cellpadding: 0;			with: [				filters do: [ :each |					html tableRow: [						html tableData: each class name.						html tableData: [							(each isKindOf: WAConfiguredRequestFilter)								ifTrue: [									html anchor										callback: [ self show: each configurationComponent ];										with: 'Configure' ].								html space.								html anchor									callback: [ self removeFilter: each ];									with: 'Remove' ] ] ] ] ]	!

renderPossibleFiltersOn: html 	| selectedFilter filters |	filters := self potentialFilters.	html label: 'Possible filters: '.	html break.	selectedFilter := WAValueHolder new.	html select		list: filters;		class: 'fix';		labels: [ :each | each name ];		callback: [ :value | selectedFilter contents: value ].	html space.	html anchor			class: 'large';			title: 'Add new filter';			onClick: 'return submitForm(this)';			callback: [ self addFilterForClass: selectedFilter contents ];				with: 'Add'! !
!WAFilterAttributeEditor categoriesFor: #addFilterForClass:!actions!public! !
!WAFilterAttributeEditor categoriesFor: #filters!accessing!public! !
!WAFilterAttributeEditor categoriesFor: #handler!accessing!public! !
!WAFilterAttributeEditor categoriesFor: #handler:!accessing!public! !
!WAFilterAttributeEditor categoriesFor: #potentialFilters!accessing!public! !
!WAFilterAttributeEditor categoriesFor: #removeFilter:!actions!public! !
!WAFilterAttributeEditor categoriesFor: #renderConfigurationOn:!public!rendering! !
!WAFilterAttributeEditor categoriesFor: #renderPossibleFiltersOn:!public!rendering! !

