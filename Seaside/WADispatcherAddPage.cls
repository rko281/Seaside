"Filed out from Dolphin Smalltalk 7"!

WADispatcherSubPage subclass: #WADispatcherAddPage
	instanceVariableNames: 'name type dispatcher'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADispatcherAddPage guid: (GUID fromString: '{e6d102b3-5a55-4651-b4f4-8427643881a7}')!
WADispatcherAddPage comment: ''!
!WADispatcherAddPage categoriesForClass!Seaside-Tools-Web! !
!WADispatcherAddPage methodsFor!

addRequestHandler	| newHandler |	(name isNil or: [ name isEmpty ])		ifTrue: [ ^ self inform: 'You must enter a path-name.' onAnswer: [ ] ].	newHandler := WAAdmin register: type at: name in: self dispatcher.	newHandler isApplication ifTrue: [ WAAdmin configureNewApplication: newHandler ].	self answer: newHandler!

dispatcher	^ dispatcher!

dispatcher: anObject	dispatcher := anObject!

handlerClasses	^ WARequestHandler concreteSubclasses asSortedCollection: [ :a :b | a name < b name ]!

renderContentOn: html	html heading level: 3; with: 'Add new request handler'.	html form: [		html table: [			html tableRow: [				html tableData class: 'label'; with: 'Name: '.				html tableData: [					html textInput						callback: [ :value | name := value ] ] ].			html tableRow: [				html tableData class: 'label'; with: 'Type: '.				html tableData: [					html select						selected: type;						list: self handlerClasses;						callback: [ :value | type := value ];						labels: [ :each | each description ] ] ] ].			html break.				html submitButton					callback: [ self addRequestHandler ];					with: 'OK'.				html space.				html submitButton					callback: [ self answer: nil ];					with: 'Cancel'  ]  ! !
!WADispatcherAddPage categoriesFor: #addRequestHandler!actions!public! !
!WADispatcherAddPage categoriesFor: #dispatcher!accessing!public! !
!WADispatcherAddPage categoriesFor: #dispatcher:!accessing!public! !
!WADispatcherAddPage categoriesFor: #handlerClasses!accessing!public! !
!WADispatcherAddPage categoriesFor: #renderContentOn:!public!rendering! !

