"Filed out from Dolphin Smalltalk 7"!

WAAttributeEditor subclass: #WAExpiringCacheAttributeEditor
	instanceVariableNames: 'handler maximumSize maximumAbsoluteAge maximumRelativeAge overflowAction overflowActionLabels'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExpiringCacheAttributeEditor guid: (GUID fromString: '{d4fc6fe6-0b83-4ab4-a32b-548881356639}')!
WAExpiringCacheAttributeEditor comment: ''!
!WAExpiringCacheAttributeEditor categoriesForClass!Seaside-Tools-Web! !
!WAExpiringCacheAttributeEditor methodsFor!

createCache	self subclassResponsibility!

handler	^ handler!

handler: anApplication	handler := anApplication.	maximumSize := anApplication configuration at: #maximumSize.	maximumRelativeAge := anApplication configuration at: #maximumRelativeAge.	maximumAbsoluteAge := anApplication configuration at: #maximumAbsoluteAge.	overflowAction := anApplication configuration at: #overflowAction!

initialize	super initialize.	overflowActionLabels := Dictionary new: 3.	overflowActionLabels at: WAHashCache removeAbsoluteOldest put: 'remove the oldest element'.	overflowActionLabels at: WAHashCache removeRelativeOldest put: 'remove the element last accessed the longest time ago'.	overflowActionLabels at: WAHashCache signalError put: 'signal an error'!

maximumAbsoluteAge	^ maximumAbsoluteAge!

maximumAbsoluteAge: aStringOrAnInteger	maximumAbsoluteAge := aStringOrAnInteger asUnsignedInteger!

maximumRelativeAge	^ maximumRelativeAge!

maximumRelativeAge: aStringOrAnInteger	maximumRelativeAge := aStringOrAnInteger asUnsignedInteger!

maximumSize	^ maximumSize!

maximumSize: aStringOrAnInteger	maximumSize := aStringOrAnInteger asUnsignedInteger!

overflowAction	^ overflowAction!

overflowAction: aSymbol	overflowAction := aSymbol!

renderCacheReplaceOn: html	html paragraph: [		html button			class: 'large';			title: 'Replace the cache';			callback: [ self replaceCache ];			with: 'Replace cache' ]!

renderMaximumAbsoluteAgeOn: html	html tableRow: [		html tableHeading: [			html label: 'Maximum Absolute Age' ].		html tableData: [ 			html textInput			size: 5;			on: #maximumAbsoluteAge of: self ]  ].	html tableRow: [		html tableData			colSpan: 2;			with: 'After so many seconds after its creation a session is considered expired no matter when it was last accessed. 0 for no limit. Has to be positive.' ]!

renderMaximumRelativeAgeOn: html	html tableRow: [		html tableHeading: [			html label: 'Maximum Relative Age' ].		html tableData: [ 			html textInput			size: 5;			on: #maximumRelativeAge of: self ] ].		html tableRow: [		html tableData			colSpan: 2;			with: 'After so many seconds of inactivity a session is considered expired. 0 for no limit. Has to be positive.' ]!

renderMaximumSizeOn: html	html tableRow: [		html tableHeading: [			html label: 'Maximum Size' ].		html tableData: [ 			html textInput			size: 5;			on: #maximumSize of: self ] ].	html tableRow: [		html tableData			colSpan: 2;			with: 'Number of sessions supported. When this limit is reached the overflow action is run. 0 for no maximum size. Has to be positive.' ]!

renderOverflowActionOn: html	html tableRow: [		html tableHeading: [			html label: 'Overflow Action' ].		html tableData: [			html select				list: WAHashCache overflowActions;				labels: [ :each |					overflowActionLabels at: each ifAbsent: [ each ] ];				on: #overflowAction of: self ] ].	html tableRow: [		html tableData			colSpan: 2;			with: 'What to do when the maximum number of sessions is reached. Only matters when the maximum size is bigger than 0.' ]!

replaceCache	self		confirm: 'This will clear all existing sessions in the current cache. Are you sure you want to continue?'		onAnswer: [ :answer |			answer ifTrue: [				self storeConfigurationValues.				self handler cache: self createCache ] ]!

storeConfigurationValues		handler configuration at: #maximumSize put: maximumSize.	handler configuration at: #maximumRelativeAge put: maximumRelativeAge.	handler configuration at: #maximumAbsoluteAge put: maximumAbsoluteAge.	handler configuration at: #overflowAction put: overflowAction! !
!WAExpiringCacheAttributeEditor categoriesFor: #createCache!private! !
!WAExpiringCacheAttributeEditor categoriesFor: #handler!accessing!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #handler:!accessing!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #initialize!initialization!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #maximumAbsoluteAge!accessing!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #maximumAbsoluteAge:!accessing!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #maximumRelativeAge!accessing!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #maximumRelativeAge:!accessing!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #maximumSize!accessing!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #maximumSize:!accessing!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #overflowAction!accessing!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #overflowAction:!accessing!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #renderCacheReplaceOn:!public!rendering! !
!WAExpiringCacheAttributeEditor categoriesFor: #renderMaximumAbsoluteAgeOn:!public!rendering! !
!WAExpiringCacheAttributeEditor categoriesFor: #renderMaximumRelativeAgeOn:!public!rendering! !
!WAExpiringCacheAttributeEditor categoriesFor: #renderMaximumSizeOn:!public!rendering! !
!WAExpiringCacheAttributeEditor categoriesFor: #renderOverflowActionOn:!public!rendering! !
!WAExpiringCacheAttributeEditor categoriesFor: #replaceCache!actions!public! !
!WAExpiringCacheAttributeEditor categoriesFor: #storeConfigurationValues!private! !

