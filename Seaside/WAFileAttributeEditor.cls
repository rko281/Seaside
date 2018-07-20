"Filed out from Dolphin Smalltalk 7"!

WAAttributeEditor subclass: #WAFileAttributeEditor
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileAttributeEditor guid: (GUID fromString: '{863fce51-2523-486a-90b9-cdd3621b2e98}')!
WAFileAttributeEditor comment: ''!
!WAFileAttributeEditor categoriesForClass!Seaside-Tools-Web! !
!WAFileAttributeEditor methodsFor!

configureLibrary: aLibrary	self show: aLibrary configurationComponent!

handler	^ handler!

handler: anObject	handler := anObject!

libraries	^ configuration asSortedCollection: [ :a :b | a name < b name ]!

renderConfigurationOn: html	| selectedLib |	selectedLib := WAValueHolder new.	html form: [		html table: [		 html tableRow: [			html tableData: [					html select						list: self libraries;						callback: [ :value | selectedLib contents: value ];						size: 10 ].			html tableData: [				html anchor						title: 'Configure selected file library';						class: 'large';						onClick: 'return submitForm(this)';						callback: [ selectedLib contents isNil ifFalse: [ self configureLibrary: selectedLib contents default ] ];							with: 'Configure' ] ] ] ]! !
!WAFileAttributeEditor categoriesFor: #configureLibrary:!actions!public! !
!WAFileAttributeEditor categoriesFor: #handler!accessing!public! !
!WAFileAttributeEditor categoriesFor: #handler:!accessing!public! !
!WAFileAttributeEditor categoriesFor: #libraries!accessing!public! !
!WAFileAttributeEditor categoriesFor: #renderConfigurationOn:!public!rendering! !

