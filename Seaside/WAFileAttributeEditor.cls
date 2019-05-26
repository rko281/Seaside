"Filed out from Dolphin Smalltalk 7"!

WAAttributeEditor subclass: #WAFileAttributeEditor
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileAttributeEditor guid: (GUID fromString: '{df7db317-a366-41ab-92ad-2d6b04399bb5}')!
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

