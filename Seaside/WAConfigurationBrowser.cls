"Filed out from Dolphin Smalltalk 7"!

WADispatcherBrowser subclass: #WAConfigurationBrowser
	instanceVariableNames: 'selection editor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigurationBrowser guid: (GUID fromString: '{bb60e601-89c0-4e85-b037-7d370c52fbdf}')!
WAConfigurationBrowser comment: ''!
!WAConfigurationBrowser categoriesForClass!Seaside-Tools-Web! !
!WAConfigurationBrowser methodsFor!

children	^ Array with: editor!

configure: aHandler	| configComponent |	aHandler isDispatcher ifTrue: [ self dispatcher: aHandler ].	self selection: aHandler.	self editor home.	configComponent := aHandler configurationComponent.	configComponent editor isNil 		ifFalse: [ configComponent editor beComponent ].	self show: configComponent!

defaultDispatcher	^ WAAdmin defaultDispatcher!

editor	^ editor!

editor: aComponent	editor := aComponent !

emptyPage	self selection: nil.	self editor home!

handlerClasses	^ WARequestHandler concreteSubclasses asSortedCollection: [ :a :b | a name < b name ]!

initializeOn: aDispatcher	super initializeOn: aDispatcher.	self setEmptyPage.	self configure: aDispatcher!

openHandler: aHandler	super openHandler: aHandler.	aHandler isNil ifFalse: [ self configure: aHandler ]!

renderContentOn: html	html table		cellspacing: 0;		cellpadding: 0;		style: 'width: 100%';		with: [			html tableRow: [				html tableData					verticalAlign: 'top';					style: 'padding: 4px; width: 250px;';					with: [ self renderDispatcherOn: html ].				html tableData					verticalAlign: 'top';					style: 'padding: 4px';					with: [ self renderEditorOn: html ] ] ]!

renderEditorOn: html	html heading		class: 'selection-title';		with: self selection class description, ': ', self selection hierarchyPathString.			html render: editor!

renderRow: aHandler named: aString on: html	html tableRow: [		html tableData: [ self renderRowName: aHandler named: aString on: html ].		html tableData: [ self renderRowDescription: aHandler on: html ] ]!

renderRowDescription: aHandler  on: html	 html render: aHandler class description !

renderRowName: aHandler named: aString on: html	html anchor		class: 'handler-name';		class: 'selected' if: aHandler = selection;		callback: [ self configure: aHandler ];		with: [			html text: aString.			aHandler isDispatcher ifTrue: [ html text: '/' ].			self dispatcher defaultHandler == aHandler				ifTrue: [ html span							title: 'Default handler';							with: ' (*)' ] ]!

selection	^ selection!

selection: anObject	selection := anObject!

setEmptyPage	editor := WADispatcherEmptyPage on: self!

show: aComponent onAnswer: aBlock	self editor show: aComponent onAnswer: aBlock!

updateUrlHandler	^ self selection! !
!WAConfigurationBrowser categoriesFor: #children!hooks!public! !
!WAConfigurationBrowser categoriesFor: #configure:!actions!public! !
!WAConfigurationBrowser categoriesFor: #defaultDispatcher!accessing!public! !
!WAConfigurationBrowser categoriesFor: #editor!accessing!public! !
!WAConfigurationBrowser categoriesFor: #editor:!accessing!public! !
!WAConfigurationBrowser categoriesFor: #emptyPage!actions!public! !
!WAConfigurationBrowser categoriesFor: #handlerClasses!accessing!public! !
!WAConfigurationBrowser categoriesFor: #initializeOn:!initialization!public! !
!WAConfigurationBrowser categoriesFor: #openHandler:!actions!public! !
!WAConfigurationBrowser categoriesFor: #renderContentOn:!public!rendering! !
!WAConfigurationBrowser categoriesFor: #renderEditorOn:!public!rendering! !
!WAConfigurationBrowser categoriesFor: #renderRow:named:on:!public!rendering/rows! !
!WAConfigurationBrowser categoriesFor: #renderRowDescription:on:!public!rendering/rows! !
!WAConfigurationBrowser categoriesFor: #renderRowName:named:on:!public!rendering/rows! !
!WAConfigurationBrowser categoriesFor: #selection!accessing!public! !
!WAConfigurationBrowser categoriesFor: #selection:!accessing!public! !
!WAConfigurationBrowser categoriesFor: #setEmptyPage!actions!public! !
!WAConfigurationBrowser categoriesFor: #show:onAnswer:!delegation!public! !
!WAConfigurationBrowser categoriesFor: #updateUrlHandler!processing!public! !

