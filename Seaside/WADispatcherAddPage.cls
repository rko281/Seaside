"Filed out from Dolphin Smalltalk"!

WADispatcherSubPage subclass: #WADispatcherAddPage
	instanceVariableNames: 'name type dispatcher'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADispatcherAddPage guid: (GUID fromString: '{be100858-8737-4dd3-a571-f289875fc839}')!

WADispatcherAddPage comment: ''!

!WADispatcherAddPage categoriesForClass!Seaside-Tools-Web! !

!WADispatcherAddPage methodsFor!

addRequestHandler	| newHandler |	(name isNil or: [ name isEmpty ])		ifTrue: [ ^ self inform: 'You must enter a path-name.' onAnswer: [ ] ].	newHandler := WAAdmin register: type at: name in: self dispatcher.	newHandler isApplication ifTrue: [ WAAdmin configureNewApplication: newHandler ].	self answer: newHandler!

dispatcher	^ dispatcher!

dispatcher: anObject	dispatcher := anObject!

handlerClasses	^ WARequestHandler concreteSubclasses asSortedCollection: [ :a :b | a name < b name ]!

renderContentOn: html	html heading level: 3; with: 'Add new request handler'.	html form: [		html table: [			html tableRow: [				html tableData class: 'label'; with: 'Name: '.				html tableData: [					html textInput						callback: [ :value | name := value ] ] ].			html tableRow: [				html tableData class: 'label'; with: 'Type: '.				html tableData: [					html select						selected: type;						list: self handlerClasses;						callback: [ :value | type := value ];						labels: [ :each | each description ] ] ] ].			html break.				html submitButton					callback: [ self addRequestHandler ];					with: 'OK'.				html space.				html submitButton					callback: [ self answer: nil ];					with: 'Cancel'  ]! !

!WADispatcherAddPage categoriesForMethods!
addRequestHandler!actions!public! !
dispatcher!accessing!public! !
dispatcher:!accessing!public! !
handlerClasses!accessing!public! !
renderContentOn:!public!rendering! !
!

