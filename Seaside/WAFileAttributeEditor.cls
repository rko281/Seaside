﻿"Filed out from Dolphin Smalltalk"!

WAAttributeEditor subclass: #WAFileAttributeEditor
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileAttributeEditor guid: (GUID fromString: '{dfc33358-c28b-42c4-8b66-742548c47215}')!

WAFileAttributeEditor comment: ''!

!WAFileAttributeEditor categoriesForClass!Unclassified! !

!WAFileAttributeEditor methodsFor!

configureLibrary: aLibrary	self show: aLibrary configurationComponent!

handler	^ handler!

handler: anObject	handler := anObject!

libraries	^ configuration asSortedCollection: [ :a :b | a name < b name ]!

renderConfigurationOn: html	| selectedLib |	selectedLib := WAValueHolder new.	html form: [		html table: [		 html tableRow: [			html tableData: [					html select						list: self libraries;						callback: [ :value | selectedLib contents: value ];						size: 10 ].			html tableData: [				html anchor						title: 'Configure selected file library';						class: 'large';						onClick: 'return submitForm(this)';						callback: [ selectedLib contents isNil ifFalse: [ self configureLibrary: selectedLib contents default ] ];							with: 'Configure' ] ] ] ]! !

!WAFileAttributeEditor categoriesForMethods!
configureLibrary:!actions!public! !
handler!accessing!public! !
handler:!accessing!public! !
libraries!accessing!public! !
renderConfigurationOn:!public!rendering! !
!

